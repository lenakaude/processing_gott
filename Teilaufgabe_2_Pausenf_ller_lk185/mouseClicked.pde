//Processing Funktion nachdem mittels Mausklick ein Button gedrückt und wieder "losgelassen" wurde
void mouseClicked() {
  if(buttonUp){
    fuellung += 0.1;
  } else if(buttonUpDec){
    fuellung = fuellung + 0.01;
  } else if(buttonDown){
    fuellung = fuellung - 0.1;
  } else if(buttonDownDec){
    fuellung -= 0.01;
  } else if(buttonOk) {
    finishGame();
  }
  //Grenzt den Wert ein zwischen einer oberen und einer unteren Schranke
  //damit der Wert nicht außerhalb des Containers ist
  fuellung = constrain(fuellung, 0.0, 1.0);
}
