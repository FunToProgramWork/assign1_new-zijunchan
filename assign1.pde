PImage groundhogImag;
PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;
int x =0;
int lightPos = 240+25;

 


void setup() {
    size(640, 480, P2D);
    // Enter Your Setup Code Here
   bgImg = loadImage("img/bg.jpg");
  groundhogImag = loadImage("img/groundhog.png");   
   soilImg = loadImage("img/soil.png");
   lifeImg= loadImage("img/life.png");
   soldierImg = loadImage("img/soldier.png");
   robotImg = loadImage("img/robot.png");
}

 

void draw() {
    // Enter Your Code Here
  image(bgImg,0,0);
  stroke(255,255,0);//the sun outside color
  fill(253,184,19);//the sun inside color
  circle(520, 30, 160);//the sun size and location
  strokeWeight(15.0);//The above is the code for the grass. I put it here because it will block the groundhog's feet.
  strokeCap(SQUARE);
  stroke(124,204,25);
  line(0, 152, 800, 152);
  image(groundhogImag,250,80);
  
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  image(soldierImg, x, 160);
  
  image(robotImg, 240, 240);
  
  strokeWeight(10.0);
  strokeCap(ROUND);
  stroke(255,0,0);
  line(lightPos -40, 240+37, lightPos, 240+37);
  lightPos=lightPos-2;
  
  if(lightPos<-100)//let lightPos go back
  lightPos = 240+30;
  
  x=x+2;
  if ( x > 640)
    x = -80;
  
  
}
