
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
}

void draw() {
  background(255);
  textSize(16);
  text("Press any key for illusion", 10, 30); 


  if (x == 190) {
    swi = 1;
  }

  if (x == 140) {
    swi = 0;
  }

  if (swi==0) {
    x++;
    y++;
    x2++;
    y2++;
    x3++;
    y3--;
    x4++;
    y4--;
  } else {
    x--;
    y--;
    x2--;
    y2--;
    x3--;
    y3++;
    x4--;
    y4++;
  }

  movingRect(x, y);
  movingRect(x2, y2);
  otherMovingRect(x3, y3);
  otherMovingRect(x4, y4);

  if (value == 0) {
    rect(70, 250);
    rect(430, 250);
    rect(260, 70);
    rect(260, 430);
  }
}

void movingRect(int x, int y) {
  pushMatrix();
  fill(black);
  translate(x, y);
  rotate(radians(45));
  rectMode(CENTER);
  rect(0, 0, 6, 185);
  noStroke();
  popMatrix();
}

void otherMovingRect(int x, int y) {
  pushMatrix();
  fill(black);
  translate(x, y);
  rotate(radians(135));
  rectMode(CENTER);
  rect(0, 0, 6, 185);
  noStroke();
  popMatrix();
}

void rect(int x, int y) {
  pushMatrix();
  fill(yellow);
  translate(x, y);
  rotate(radians(45));
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  noStroke();
  popMatrix();
}

void keyPressed() {
  if (value == 0) {
    value = 1;
  } else {
    value = 0;
  }
}