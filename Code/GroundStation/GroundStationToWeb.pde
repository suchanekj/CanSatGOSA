//processing sketch which listens to a port with arduino GroundStation
//run it in Processing IDE so you can see the received input

import processing.serial.*;

Serial port;
int baud = 9600;
int eol = 10; //ASCII code for end of line

int timeSinceLastReceiveMS = 0;
int receiveTimeThresholdMS = 5000;//how long should this wait until trying to connect again

ArrayList<String> htmlResponses;//responces from web server
ArrayList<String> arduinoData;//all the communication with arduino
String dataFilename = "CanSatData";
String htmlResponsesFilename = "CanSatHTMLResposes";
String fileExtension = ".txt";
int dataLength = 5;//how many pieces of data are we expecting

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

  //connect once to server -- it will speed up uploading speed later
  //use meaningless data
  uploadData(-1, -1, -1, -1, -1);

  println("end of setup()");
}

void draw() {
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
      //show what is received
      println(input);
      //sava all the communication with "timestamp" (kind of - see getPrefix())
      arduinoData.add(getPrefix()+input);
      //the data we care of is CSV -- comma separated values
      String[] splitedData = getSplitedDataFromInput(input);
      //if the splitedData has more or less values it's not what we want to upload
      if (splitedData.length==dataLength) {
        try {
          //try to parse data
          float lat = Float.parseFloat(splitedData[0]);
          float lng = Float.parseFloat(splitedData[1]);
          int temp = Integer.parseInt(splitedData[2]);
          int press = Integer.parseInt(splitedData[3]);
          long timems = Long.parseLong(splitedData[4]);

          //println("lat:"+lat+",lng:"+lng+",t:"+temp+",p:"+press+"timems:"+timems);

          //meassure time of uploading
          int startMS = millis();
          //data was parsed fine so upload it
          uploadData(lat, lng, temp, press, timems);
          arduinoData.add(getPrefix()+"upload timeMS: "+(millis()-startMS));
        }
        catch(Exception e) {
          //if an error occured while parsing or uploading save it to log
          arduinoData.add(getPrefix()+" ERROR: "+e.toString());
        }
      }
    }
  }

  if (frameCount%60==0) {
    //roughly every second save all data locally
    saveData(dataFilename, arduinoData);
    saveData(htmlResponsesFilename, htmlResponses);
  }
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
  //parses each line which it receives into an array
  return input.split(",");
}

void uploadData(float lat, float lng, int temp, int press, long timeMS) {
  //upload data via url and save response into htmlResponses for later use
  htmlResponses.add(join(loadStrings(""/*url to save data to web server*/), ""));
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
