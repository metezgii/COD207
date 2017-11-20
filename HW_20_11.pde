PImage a;
PImage b;
PImage c;
PImage d;
PImage e;
PImage f;
PImage g;
PImage h;
PImage i;
PImage j;
PImage k;
PImage l;
PImage m;
PImage n;
PImage o;
PImage p;
PImage r;
PImage s;
PImage t;
PImage v;
int kk=210;
int hh=110;


void setup(){
  size(1040,430);
  a = loadImage("1.jpg");
  b = loadImage("2.jpg");
  c = loadImage("3.jpg");
  d = loadImage("4.jpg");
  e = loadImage("5.jpg");
  f = loadImage("6.jpg");
  g = loadImage("7.jpg");
  h = loadImage("8.jpg");
  i = loadImage("9.jpg");
  j = loadImage("10.jpg");
  k = loadImage("11.jpg");
  l = loadImage("12.jpg");
  m = loadImage("13.jpg");
  n = loadImage("14.jpg");
  o = loadImage("15.jpg");
  p = loadImage("16.jpg");
  r = loadImage("17.jpg");
  s = loadImage("18.jpg");
  t = loadImage("19.jpg");
  v = loadImage("20.jpg");
  
  
}

void draw() {
  background(0);
  image(a,0,0);
  image(b,0,hh);
  image(c,0,hh*2);
  image(d,0,hh*3);
  image(e,kk,0);
  image(f,kk,hh);
  image(g,kk,hh*2);
  image(h,kk,hh*3);
  image(i,kk*2,0);
  image(j,kk*2,hh);
  image(k,kk*2,hh*2);
  image(l,kk*2,hh*3);
  image(m,kk*3,0);
  image(n,kk*3,110);
  image(o,kk*3,220);
  image(p,kk*3,330);
  image(r,kk*4,0);
  image(s,kk*4,hh);
  image(t,kk*4,hh*2);
  image(v,kk*4,hh*3);
}