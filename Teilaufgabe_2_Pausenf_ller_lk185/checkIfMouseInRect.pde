//Funktion zum Testen, ob Maus in Rectangle ist
//für ein spezifisches Rectangle
boolean checkIfMouseInRect(int rectX, int rectY, int rectWidth, int rectHeight) {
  if ( mouseX >= rectX && mouseX <= rectX + rectWidth && 
    mouseY >= rectY && mouseY <= rectY + rectHeight) {
    return true;
  } else { 
    return false;
  }
}
