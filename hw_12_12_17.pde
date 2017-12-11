import ddf.minim.*;

Minim min;
AudioPlayer hit;

float x;
float y;
int w=400;
int h=200;
boolean sahne1=true;
boolean sahne2=false;
boolean sahne3=false;


float pct = 1;
float accx = 5;
float accy = 5;

float x1;
float y1;


float x1b;
float y1b;

float x2;
float y2;
float dx = 1;
float dy = 1;

float radEnemy=30;

void setup() {
  min = new Minim(this);
  hit = min.loadFile("hit.wav");
  size(800, 800);
  smooth();  
  x2 = random(15, 785);
  y2 = random(15, 785);
}

void draw() {
  background(100);
  x=width*0.5 - w*0.5;
  y=height*0.5 -h*0.5;

  if ( sahne1 == true) {
    fill(0, 255, 0);
    rect(x, y, w, h);
    textSize(100);
    fill(255);
    text("START", x+50, y+150);
  }
  if ( sahne2 == true) {
    background(255);
    x1b=mouseX;
    y1b=mouseY;
    x1 = x1 + (x1b-x1)*pct;
    y1 = y1 + (y1b-y1)*pct;

    x2 = x2+accx*dx;
    y2 = y2 +accy*dy;
    robot();
    dusman();
    //hit detection
    if (mouseX+50> x2-radEnemy/2 && mouseX-50< x2+ radEnemy/2  
      && mouseY+125> y2-radEnemy/2 && mouseY-125< y2+ radEnemy/2) {
      sahne2= false;
      sahne3= true;
      hit.rewind();
      hit.play();
    }
  }
  if ( sahne3 == true) {
    fill(0, 255, 0);
    rect(x, y, w, h);
    textSize(70);
    fill(255);
    text("try again", x+50, y+125);
    sifirdan();
  }
}


void dusman() {
  fill(0);
  noStroke();
  ellipse(x2, y2, radEnemy, radEnemy);

  if (x2 > width-15 || x2 < 15)
  {
    accx = random(-5, 5);
    dx = dx*-1;
  }

  if ( y2 > height-15|| y2 < 15) {
    accy = random(-5, 5);
    dy = dy*-1;
  }
}
void robot() {
  pushMatrix();
  translate(x1-200, y1-150);
  //ÖNEMLİİİİ KARE
  fill(255, 0, 0, 50);
  rect(0+150, 0+35, 100, 250);
  //kulaklar
  stroke(3);
  fill(#F01616);
  ellipse(162, 89, 18, 25);
  ellipse(240, 89, 18, 25);  

  //anten
  stroke(3);
  fill(#4510E8);
  triangle(200, 40, 189, 62, 211, 62);
  ellipse(200, 41, 10, 10);

  //boyun
  stroke(2);
  fill(#F01616);
  rect(194, 89, 13, 50);

  //kafa
  stroke(2);
  fill(#203EF5);
  ellipse(200, 88, 79, 57);

  //gözler(beyaz)
  stroke(2);
  fill(#ffffff);
  ellipse(181, 89, 26, 26);
  ellipse(220, 89, 26, 26);

  //gözler(siyah)
  fill(0);
  ellipse(180, 85, 18, 18);
  ellipse(223, 93, 18, 18);

  //ayaklar
  stroke(2);
  fill(#203EF5);
  triangle(174, 281, 162, 256, 187, 256);
  triangle(226, 281, 214, 256, 239, 256);
  fill(#F01616);
  triangle(174, 223, 153, 263, 194, 263);
  triangle(226, 223, 206, 263, 246, 263);



  //gövde
  stroke(2);
  fill(#203EF5);
  rect(150, 139, 100, 100);
  fill(#F01616);
  rect(160, 149, 80, 80);
  fill(#203EF5);
  rect(170, 159, 60, 60);

  //kollar
  stroke(0);
  line(120, 156, 150, 156);
  line(120, 156, 120, 205);
  line(280, 156, 250, 156);
  line(280, 156, 280, 205);

  //kola kalınlık
  stroke(2);
  fill(#F01616);
  rect(116, 163, 7, 37);
  rect(276, 163, 7, 37);
  popMatrix();
}

void sifirdan() {
  x2 = random(15, 785);
  y2 = random(15, 785);
}



void mouseClicked() {

  if (mouseY>y&&  mouseY<y+h && mouseX>x && mouseX<x+w) {
    sahne1 = false;
    sahne2= true;
    sahne3= false;
  }
}