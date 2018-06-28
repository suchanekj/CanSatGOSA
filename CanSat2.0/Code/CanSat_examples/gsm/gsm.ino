#include "SIM808.h"

void setup() {
  pinMode(50, OUTPUT);
  pinMode(48, OUTPUT);
  Serial.begin(9600);
  Serial2.begin(9600);
  delay(10000);
  Serial.println(1);
  GSM_init();
  Serial.println(2);
  delay(10000);
  sendemail();
}

void loop() {
  
}

