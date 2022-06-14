//Funktion die checkt, ob Mouse über Checkboxen ist
//frägt für jeden Button ab
//If Mouse in Rectangle = true, dann wird zB. Boolean buttonUp auch auf true gesetzt.
void update () {
  //Button Up für große Intervalle
  if (checkIfMouseInRect(col4, row3, col1, row1)) {
    buttonUp = true;
    buttonUpDec= false;
    buttonDown = false;
    buttonDownDec = false;
  } else if (checkIfMouseInRect(col4, row3+200, col1, row1)) { //Button up für kleine Intervalle
    buttonUp = false;
    buttonUpDec = true;
    buttonDown = false;
    buttonDownDec = false;
  } else if (checkIfMouseInRect(col4, row3+400, col1, row1)) { //Button down für kleine Intervalle
    buttonUp = false;
    buttonUpDec = false;
    buttonDown = false;
    buttonDownDec = true;
  } else if (checkIfMouseInRect(col4, row3+600, col1, row1)) { //Button down für große Intervalle
    buttonUp = false;
    buttonUpDec = false;
    buttonDown = true;
    buttonDownDec = false;
  } else if (checkIfMouseInRect(int(width/1.4), row3+200, col2, row1)) {
    buttonOk  = true;
    buttonNochmal  = false;
  } else if (checkIfMouseInRect(int(width/1.4), row3+400, col2, row1)) {
    buttonOk  = false;
    buttonNochmal  = true;
  } else {
    buttonUp = false;
    buttonUpDec = false;
    buttonDown = false;
    buttonDownDec = false;
    buttonOk  = false;
    buttonNochmal  = false;
  }
}
