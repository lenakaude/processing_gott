String overlayText = "Drücke eine beliebige Taste, um zu beginnen";

boolean overlay = false;


void reset () {
  overlay = false;
  showScore = false;
  fuellung = 0.0;
  curTimer = countdownSeconds;
  roteLinieY = int(random(row3, row3 + height/2));
  overlayText = "Drücke eine beliebige Taste, um zu beginnen";
}

void startAfterReset(){
  
}

void drawOverlay () {
  fill(155, 155, 155, 155);
  rect(0, 0, width, height);
  fill(255);
  
  textAlign(CENTER);
  text(overlayText, width/2, height/2);
}
