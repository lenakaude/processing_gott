void finishGame() {
  overlay = true;
  showScore = true;
  
  int points = calculateScore();
  overlayText = points + " Punkte\nDrücke eine beliebige Taste, um zu beginnen";
}
