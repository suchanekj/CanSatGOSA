//processing sketch which listens to a port with arduino GroundStation
//run it in Processing IDE so you can see the received input

import processing.serial.*;
import static javax.swing.JOptionPane.*;

Serial port;
int baud = 9600;
int eol = 10; //ASCII code for end of line

int timeSinceLastReceiveMS = 0;
int receiveTimeThresholdMS = 5000;//how long should this wait until trying to connect again
int frameCounter = 0;

String urlForUploadBase = "";

ArrayList<String> htmlResponses;//responces from web server
ArrayList<String> arduinoData;//all the communication with arduino
String dataFilename = "CanSatData";
String htmlResponsesFilename = "CanSatHTMLResposes";
String fileExtension = ".txt";

int dataLength = 20;//how many pieces of data are we expecting
String serialInput = "";
boolean inputIsJustCSV = false;

void setup() {
  htmlResponses = new ArrayList<String>();
  arduinoData = new ArrayList<String>();

  println("ports: "+join(Serial.list(), ", "));
  //looks for a Serial port to comunicate with Arduino (GroundBase)
  if (Serial.list().length<1) {
    println("ERROR: Serial port not found");
  } else {
    tryToConnect();
  }

  //create filenames for saving with current date and time
  dataFilename += createFilenamePostfix()+fileExtension;
  println("data filename: "+dataFilename);

  htmlResponsesFilename += createFilenamePostfix()+fileExtension;
  println("responses filename: "+htmlResponsesFilename);

  //ask for base url, we dont want it to be hardcoded because we don't provide the web storage for anyone
  urlForUploadBase = showInputDialog("Please enter base url for uploading (https://yourPage.com/datasaving.php?table=TD)");
  println("base url: "+urlForUploadBase);
  
  String dataLengthStr = showInputDialog("Input the length (amount) of data (do not count 'timeAdded')");
  try{
    dataLength = parseInt(dataLengthStr);
  }catch(Exception e){
    arduinoData.add(getPrefix()+" ERROR: "+e.toString());
  }
  
  println("data length: "+dataLength);
  
  String isCSV = showInputDialog("Is the data only CSV (not in brackets...) for yes -> 'yes','1','true'");
  if(isCSV == "0" || isCSV == "yes" || isCSV == "true"){
    inputIsJustCSV = true;
  }
  //connect once to server -- it will speed up uploading speed later
  //use meaningless data
  connectToServer();
  
  println("end of setup()");
}

void draw() {
  frameCounter++;
  //save data every 60 frames
  if (frameCounter%60==0) {
    //roughly every second save all data locally
    saveData(dataFilename, arduinoData);
    saveData(htmlResponsesFilename, htmlResponses);
    println("data saved");
  }
  
  //if arduino is not available try to connect to it and then return
  if (port==null) {
    if (millis()-timeSinceLastReceiveMS>=receiveTimeThresholdMS) {
      tryToConnect();
      println("try to connect");
      timeSinceLastReceiveMS = millis();
    }
    return;
  }

  //if theres no signal received in certain amount of time (timeThresholdMS) try to reconnect
  //println("current: "+millis()+" timeSinceLast: "+timeSinceLastReceiveMS);
  if (port.available()<=0) {
    if (millis()-timeSinceLastReceiveMS>=receiveTimeThresholdMS) {
      tryToConnect();
      println("try to connect");
      timeSinceLastReceiveMS = millis();
    }
  } else {
    timeSinceLastReceiveMS = millis();
  }

  while (port.available()>0) {
    //read from serial port until end of line is reached and get rid of redundant spaces
    String input = trim(port.readStringUntil(eol));
    if (input != null) {
      println(input);
      arduinoData.add(getPrefix()+input);
      
      //look at last char if it is '&' -> add to current string and continue
      if(serialInput == ""){
        serialInput = input;
      }else if(input.charAt(input.length()-1) == '&'){
        serialInput += input.substring(0,input.length()-1);
        continue;
      }else{
        //its the last part so add it a then split and so on...
        serialInput += input;
      }
      //the data we care of is CSV in [] -- comma separated values
      String[] splitedData = null;
      if(inputIsJustCSV){
        splitedData = getSplitedDataFromInput(serialInput);
      }else{
        splitedData = getSplitedDataFromInputWithBrackets(serialInput);
      }
      
      if(splitedData==null){
        continue;
      }

      //if the splitedData has more or less values it's not what we want to upload
      if (splitedData.length==dataLength) {
        try {
          int startMS = millis();
          uploadDataInts(splitedData);//use uploadDataString()???
          arduinoData.add(getPrefix()+"upload timeMS: "+(millis()-startMS));
        }
        catch(Exception e) {
          arduinoData.add(getPrefix()+" ERROR: "+e.toString());
        }
      }
    }
  }
}

void connectToServer(){
  String url = urlForUploadBase;
  for (int i = 0; i< dataLength; i++) {
    url += "&i"+i+"="+"EXCLUDE";//exclude is my key word for not uploading a value to MySQL in my php
  }
  url+="&timeAdded=EXCLUDE";
  htmlResponses.add(join(loadStrings(url), ""));
}

void tryToConnect() {
  //tries to connect to a device
  try {
    arduinoData.add(getPrefix()+"Connecting to arduino");
    port = new Serial(this, Serial.list()[0], baud);
  }
  catch(Exception e) {
    arduinoData.add(getPrefix()+" ERROR: "+e.toString());
  }
}

String[] getSplitedDataFromInput(String input) {
  return input.split(",");
}

String[] getSplitedDataFromInputWithBrackets(String input) {
  //parses each line which it receives into an array
  //input format #[packetNum][id][data]...
  int thirdBracketStartIndex = findNthChar(input, '[', 3);
  int thirdBracketEndIndex = findNthChar(input, ']', 3);
  if(thirdBracketStartIndex>-1 && thirdBracketEndIndex>-1){
    String data = input.substring(thirdBracketStartIndex+1, thirdBracketEndIndex);
    return data.split(",");
  }else{
    return null;
  }
}

int findNthChar(String in, char c, int n){
  //finds nth char in a string not zero based
  int index = -1;
  int count = 0;
  for(int i = 0;i < in.length(); i++){
    if(c == in.charAt(i)){
      index = i;
      count++;
      if(count == n){
        return index;
      }
    }
  }
  return index;
}

void uploadDataStrings(String[] data){
  String url = urlForUploadBase;
  for (int i = 0; i< data.length; i++) {
    if(data[i] == "" || data[i]==null && data[i].length()<1){
      url += "&i"+(i+1)+"=EXCLUDE";
    }else{
      url += "&i"+(i+1)+"="+data[i];
    }
  }
  url+="&timeAdded=EXCLUDE";
  htmlResponses.add(join(loadStrings(url), ""));
}

void uploadDataInts(String[] data) {
  String url = urlForUploadBase;
  for (int i = 0; i< data.length; i++) {
    try {
      url += "&i"+(i+1)+"="+parseInt(data[i]);
    }
    catch(Exception e) {
      arduinoData.add(getPrefix()+" ERROR: "+e.toString());
    }
  }
  url+="&timeAdded=EXCLUDE";
  htmlResponses.add(join(loadStrings(url), ""));
}

void saveData(String filename, ArrayList<String> data) {
  //converting ArrayList to array
  String[] dataArray = new String[data.size()];
  for (int i = 0; i< data.size(); i++) {
    dataArray[i] = data.get(i);
  }
  //saving data
  saveStrings(filename, dataArray);
}

String createFilenamePostfix() {
  //returns datetime in following format: _DD-MM-YYYY_HH-MM
  return "_"+nf(day(), 2)+"-"+nf(month(), 2)+"-"+year()+"_"+nf(hour(), 2)+"-"+nf(minute(), 2);
}

String getPrefix() {
  return getSavingTime()+"=>";
}
String getSavingTime() {
  //returns time in HH:MM:SS format
  return nf(hour(), 2)+":"+nf(minute(), 2)+":"+nf(second(), 2);
}
