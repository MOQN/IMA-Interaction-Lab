// IMA NYU Shanghai
// Interaction Lab
// Nov 26 2016
// MOQN
// jh.moon@nyu.edu

/**
  This example is to send multiple values from Processing to Arduino.
  You can find the Processing example file in the same folder which works with this Arduino file.
  please note that the echo
 **/

#define NUM_OF_VALUES 10    /** YOU MUST CHANGE THIS ACCORDING TO YOUR PROJECT **/

/** DO NOT REMOVE THESE **/
int tempValue = 0;
int valueIndex = 0;

/* This is the array of values storing the data from Processing. */
int values[NUM_OF_VALUES];


void setup() {
  Serial.begin(9600);
}

void loop() {
  getSerialData();

  // add your code here
  // values[0]
  // values[1]
}











/* If you are curious about this part, send an email to me! */
void getSerialData() {
  if (Serial.available()) {
    char c = Serial.read();
    switch (c) {
      case '0'...'9':
        tempValue = tempValue * 10 + c - '0';
        break;
      case ',':
        values[valueIndex] = tempValue;
        tempValue = 0;
        valueIndex++;
        break;
      case 'n': // the end of the data
        values[valueIndex] = tempValue;
        tempValue = 0;
        valueIndex = 0;
        break;
      case 'e': // to echo
        for (int i = 0; i < NUM_OF_VALUES; i++) {
          Serial.print(values[i]);
          if (i < NUM_OF_VALUES - 1) {
            Serial.print(',');
          }
          else {
            Serial.println();
          }
        }
        break;
    }
  }
}
