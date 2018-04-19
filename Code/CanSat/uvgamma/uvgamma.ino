#include <Arduino.h>

int counter;
int uv;
volatile byte state = LOW;

void inc() {
  counter++;
  state = !state;
}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2, INPUT);
  pinMode(A0, INPUT);
  pinMode(13, OUTPUT);
  attachInterrupt(digitalPinToInterrupt(2), inc, CHANGE);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(13, state);
  uv = analogRead(A0);
  Serial.print(counter / 2);
  Serial.print(" ");
  Serial.println(uv);
}
