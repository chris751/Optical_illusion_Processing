
color yellow = color(255, 204, 0); 
color black = color(0);
int value = 0; 

int x = 160;
int y = 160; 

int x2 = 340;
int y2 = 340; 

int x3 = 340;
int y3 = 160; 

int x4 = 160;
int y4 = 340; 

int swi = 0;

void setup() {
  size(500, 500);
  smooth();
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);
  textSize(16);
  text("Press any key for illusion", 10, 30); 

  switchDirection();
  movingRect(x, y, 45);
  movingRect(x2, y2, 45);
  movingRect(x3, y3, 135);
  movingRect(x4, y4, 135);

  if (value == 0) {
    drawRectangle(70, 250);
    drawRectangle(430, 250);
    drawRectangle(260, 70);
    drawRectangle(260, 430);
  }
}

void movingRect(int x, int y, int angle) {
  pushMatrix();
  fill(black);
  translate(x, y);
  rotate(radians(angle));
  rect(0, 0, 6, 185);
  popMatrix();
}

void drawRectangle(int x, int y) {
  pushMatrix();
  fill(yellow);
  translate(x, y);
  rotate(radians(45));
  rect(0, 0, 100, 100);
  popMatrix();
}

void switchDirection() {
  if (x == 190) {
    swi = 1;
  }

  if (x == 140) {
    swi = 0;
  }

  if (swi==0) {
    x++; y++; x2++; y2++; x3++; y3--; x4++; y4--;
  } else {
    x--; y--; x2--; y2--; x3--; y3++; x4--; y4++;
  }
}

void keyPressed() {
  if (value == 0) {
    value = 1;
  } else {
    value = 0;
  }
}