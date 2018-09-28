float xe;
int numCircles = 80;
float xy;
float ye;
float col=200;

PImage head;
PImage body;
PImage tail;

int x = 0;


Circle[] circles = new Circle[numCircles]; // define the array

void setup(){
size(1000,500);
 head = loadImage ("cabeza.png");
  body = loadImage ("cuerpo2.png");
  tail = loadImage ("cola.png");
}

void draw(){
  background(255,0,0);
   //image (head,0,0);
  //image (body,0,0);
  //image (tail,0,0);
  pushMatrix();
  translate((900), (height/2));
  scale(10);
  
 
  
  xe=xe+50;
  //xy=xy-10;
  //ye=ye-10;

    for (int i=0; i<numCircles; i++) {
    xy=i;
    ye=-i;
     
    circles[i] = new Circle( cos(xe-(.3*i)), xy,ye/8,90,col); // fill the array with circles at random positions    
    //circles2[i] = new Circle( sin(xe-(.5*i)), xy,xy/10,90);
    }
   
   for (int i=0; i<numCircles; i++) {
    circles[i].display(); // display all the circles
   }
  
  noStroke();
  
          
  popMatrix();
  
  
  
  if (x < 100) {
    line(x, 0, x, 100);
    x = x + 1;
  } else {
    noLoop();
  }
   //saveFrame("line-######.png");
}