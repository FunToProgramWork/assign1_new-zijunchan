PImage bgImag;
PImage soilImag;
PImage lifeImag;
PImage groundhogImag;
PImage robotImag;
PImage soldierImag;
int x = 0;
int lightPos = 240;

void setup() {
  size(600,480,P2D);
  bgImag = loadImage("img/bg.jpg");
  soilImag = loadImage("img/soil.png");
  lifeImag = loadImage("img/life.png"); 
  groundhogImag = loadImage("img/groundhog.png");
  robotImag = loadImage("img/robot.png");
  soldierImag = loadImage("img/soldier.png");
  //Every variable is used to import image
}

void draw() {
  
  image(bgImag, 0, 0);
  
  stroke(255, 255, 0);//sun outside color
  fill(253, 184, 19);//sun inside color
  ellipse(570, 30, 150, 150);//sun

  strokeWeight(15.0);//grass
  strokeCap(SQUARE);
  stroke(124,204,25);
  line(0, 152, 800, 152);
     
  
  image(soilImag,0,160);
  image(lifeImag,10,10);
  image(lifeImag,80,10);
  image(lifeImag,150,10);
  image(groundhogImag,250,80);
  image(robotImag,240,240);
  image(soldierImag,x,160);
  
  
    x=x+3;
    if ( x > 640)
    x = -80;
    
      
    strokeWeight(10.0);//lightPos
    strokeCap(ROUND);
    stroke(255,0,0);//color
    line(lightPos -40, 240+37, lightPos, 240+37);//Let the lightPos in the correct seat
    lightPos = lightPos-4;//Let the lightPos turn left
    if(lightPos<-100)//let lightPos go back
    lightPos = 240+30;

    

    
}
