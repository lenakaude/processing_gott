// Relative Größen festlegen
// Farben
color backgroundColor = color(193, 205, 205);
color beschriftungen = color(48, 48, 48);
// Bilder
PImage imgUp;
PImage imgUpp;
PImage imgDownn;
PImage imgDown;

// <a href="https://www.flaticon.com/de/kostenlose-icons/langer-pfeil" title="langer-pfeil Icons">Langer-pfeil Icons erstellt von Arkinasi - Flaticon</a>
// <a href="https://www.flaticon.com/de/kostenlose-icons/chevron-runter" title="chevron runter Icons">Chevron runter Icons erstellt von inkubators - Flaticon</a>
// <a href="https://www.flaticon.com/de/kostenlose-icons/dreieck" title="dreieck Icons">Dreieck Icons erstellt von IYAHICON - Flaticon</a>
// <a href="https://www.flaticon.com/de/kostenlose-icons/dreieck" title="dreieck Icons">Dreieck Icons erstellt von Iconpro86 - Flaticon</a>
// Text
int fontSizeUeberschrift = 60;
int fontSizeStandard = 40;
String ueberschrift = "Pausenfüller";
String ok = "OK";
String neustart = "Neustart";

// Buttons

boolean buttonUp, buttonUpDec, buttonDown, buttonDownDec;
boolean buttonOk, buttonNochmal;
boolean buttonEmpty;

boolean selectedButtonUp, selectedButtonUpDec,selectedButtonDown, selectedButtonDownDec;

float fuellung = 0.0;
int countdownSeconds = 10;
int curTimer = countdownSeconds; //Muss am Anfang gleich sein für Visu usw
//float roteLinie;
int roteLinieY;

int blauStartY;

int row1, row2, row3;
int col1, col2, col3, col4;
// 
void setup() {

  size(2000, 1500);
  // Damit die Geschwindigkeit auf unterschiedlichen Geräten gleich ist
  frameRate(10);
  row1 = height/10;
  row2 = height/8;
  row3 = height/4;
  
  col1 = width/10;
  col2 = width/8;
  col3 = width/4;
  col4 = width/2;

  // evtl weglassen bg hier
  background(backgroundColor);

  imgUp = loadImage("up.png");
  background(backgroundColor);

  imgUpp = loadImage("upp.png");
  background(backgroundColor);

  imgDownn = loadImage("downn.png");
  background(backgroundColor);

  imgDown = loadImage("down.png");
  background(backgroundColor);

  roteLinieY = int(random(row3, row3 + height/2));
}

void draw() {
  
  update();
  background(backgroundColor);
 
  // Box
  rect(col1, row3, col3, height/2);
  // buttons up and down
  rect(col4, row3, col1, row1);
  rect(col4, row3+200, col1, row1);
  rect(col4, row3+400, col1, row1);
  rect(col4, row3+600, col1, row1);
  // buttons ok & nochmal
  rect(width/1.4, row3+200, col2, row1);
  rect(width/1.4, row3+400, col2, row1);
  fill(backgroundColor);
  fill(255);

  image(imgUp, col4, row3);
  image(imgUpp, col4, row3+200);
  image(imgDownn, col4, row3+400);
  image(imgDown, col4, row3+600);

  // blaues Rechteck

  fill(0, 150, 150);
  //Prozentsatz der Füllung
  //Füllt sich in jeder Iteration um 0.05
  if(!overlay)
    fuellung = constrain(fuellung + 0.005, 0.0, 1.0);
  //Container geht von row1 bis height/2 ->
  //d.h. Gesamtlänge = height/2 - row1 -> Länge des blauen Bereichs:
  // Gesamtlänge * fuellung -> Startareal ist demnach row1 + (1-fuellung)*Gesamtlänge
  blauStartY = (row3) + int((1.0 - fuellung) * height/2);
  int blauHeight = int(fuellung * 750);
  int blauXLinks = col1;
  int blauWidth = col3;
  rect(blauXLinks, blauStartY, blauWidth, blauHeight);
  fill(255);
  
  // rote Linie
  //line(x1, y1, x2, y2);
  stroke(255, 0, 0);
  // mit Random ersetzen
  line(col1, roteLinieY, col1+500, roteLinieY);
  stroke(backgroundColor);


  //timer
  //Countdown - curTimer speichert aktuelle Sekunden, gerundet auf ganze Zahl für Visualisierung
  if(curTimer > 0 && !overlay)
    curTimer = countdownSeconds - int(millis()/1000);
  rect(width/6.5, height/1.2, col2, height/15);
  fill(0);
  textAlign(CENTER);
  text(curTimer, width/6.5 + (col2/2), height/1.2 + (height/30));
  fill(255);
  if(curTimer == 0 && !overlay) {
    finishGame();
  }

  // Texte
  textSize(fontSizeUeberschrift);
  fill(beschriftungen);
  text(ueberschrift, col1, row2);

  //textAlign(CENTER,CENTER);
  textSize(fontSizeStandard);
  fill(beschriftungen);
  text(ok, width/1.4, row3+200 );
  text(neustart, width/1.4, row3+400);
  fill(255);
  
  if(overlay){
    drawOverlay();
    
    if (keyPressed) {
      reset();
    }
  }
}
