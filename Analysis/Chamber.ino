#include <Wire.h> 
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);

int fanPin = 6;
int lightsPin = 8;
int heaterPin = 9;
int ledPin = 4;

int butFan = 2;
int butHeater = 3;
int butLights = 5;

boolean isZeroHeater = false;
boolean isZeroLights = false;
boolean isZeroFan = false;

int temp = 20;
int humidity = 70;
boolean heaterOn = false;
boolean fanOn = true;
boolean lightsOn = false;

int state = 0;
int numOfStates = 4;

void setup()
{
  Serial.begin(9600);
  
  pinMode(fanPin, OUTPUT);
  pinMode(heaterPin, OUTPUT);
  pinMode(lightsPin, OUTPUT);
  pinMode(ledPin,OUTPUT);

  pinMode(butFan, INPUT);
  pinMode(butHeater, INPUT);
  pinMode(butLights, INPUT);

  if(fanOn){
    digitalWrite(fanPin,HIGH);
  }else{
    digitalWrite(fanPin,LOW);
  }
  if(heaterOn){
    digitalWrite(heaterPin,HIGH);
  }else{
    digitalWrite(heaterPin,LOW);
  }
  
  lcd.begin(16,2);               // initialize the lcd 
  lcd.home ();
  lcd.setCursor(0,0);
  
  for(int i = 16; i>=0; i--){
    lcd.clear();
    lcd.setCursor(i,0);
    lcd.print("Hello, Life");
    lcd.setCursor(i,1);
    lcd.print("By HATALOM!");
    delay(400);
  }
  delay(1000);
}

void loop()
{
  updateChambre();
  updateDisplay(temp,humidity);
  delay(50);
  digitalWrite(ledPin,HIGH);
}
void updateChambre(){
  //get temp and humidity
  Serial.print("lights:");
  Serial.print(digitalRead(butLights));
  Serial.print("butHeater:");
  Serial.print(digitalRead(butHeater));
  Serial.print("butFan:");
  Serial.println(digitalRead(butFan));

  if(digitalRead(butHeater) == 0){
    if(!isZeroHeater){
      isZeroHeater = true;
      toggleHeater();
    }
  }else{
    isZeroHeater = false;
  }
  if(digitalRead(butLights) == 0){
    if(!isZeroLights){
      isZeroLights = true;
      toggleLights();
    }
  }else{
    isZeroLights = false;
  }
  if(digitalRead(butFan) == 0){
    if(!isZeroFan){
      isZeroFan = true;
      toggleFan();
    }
  }else{
    isZeroFan = false;
  }
}
void updateDisplay(int temp,int hum){
  int newState = (millis()/1000)%numOfStates;
  if(newState == state){
    return;
  }
  state = newState;
  
  lcd.clear();
  lcd.print("Temp: ");
  lcd.print(temp);
  lcd.print("C");
  lcd.setCursor(0,1);
  
  switch(state){
    case 0:
      lcd.print("Humidity: ");
      lcd.print(hum);
      lcd.print("%");
      break;
    case 1:
      if(heaterOn){
        lcd.print("Heater ON");
      }else{
        lcd.print("Heater OFF");
      }
      break;
    case 2:
      if(fanOn){
        lcd.print("Fan ON");
      }else{
        lcd.print("Fan OFF");
      }
      break;
    case 3:
      if(lightsOn){
        lcd.print("Lights ON");
      }else{
        lcd.print("Lights OFF");
      }
      break;
  }
}
void turnHeaterOn(){
  digitalWrite(heaterPin, HIGH);
  heaterOn = true;
}
void turnHeaterOff(){
  digitalWrite(heaterPin,LOW);
  heaterOn = false;
}
void toggleHeater(){
  if(heaterOn){
    turnHeaterOff();
  }else{
    turnHeaterOn();
  }
}
void turnFanOn(){
  digitalWrite(fanPin, HIGH);
  fanOn = true;
}
void turnFanOff(){
  digitalWrite(fanPin,LOW);
  fanOn = false;
}
void toggleFan(){
  if(fanOn){
    turnFanOff();
  }else{
    turnFanOn();
  }
}
void turnLightsOn(){
  digitalWrite(lightsPin,HIGH);
  lightsOn = true;
}
void turnLightsOff(){
  digitalWrite(lightsPin,LOW);
  lightsOn = false;
}
void toggleLights(){
  if(heaterOn){
    turnLightsOff();
  }else{
    turnLightsOn();
  }
}
