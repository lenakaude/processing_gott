boolean showScore;
int maxPoints = 750;

void scoreBoard () {
  
}

int calculateScore(){
  int difference = abs(roteLinieY - blauStartY);
  //max gibt den größeren Wert zurück - Wenn Differenz größer als max Punkte, wird der Score sonst negativ
  int score = max(0, maxPoints - difference);
  return score;
}
