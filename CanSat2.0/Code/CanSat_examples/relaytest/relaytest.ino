void setup() {
  // put your setup code here, to run once:
  pinMode(34, OUTPUT);
  pinMode(35, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(34, HIGH);
  digitalWrite(35, HIGH);
  delay(5000);
  digitalWrite(34, LOW);
  digitalWrite(35, LOW);
  delay(5000);
}
