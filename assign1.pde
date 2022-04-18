PImage bgImag;//int background
PImage soilImag;//int soil
PImage lifeImag;//int groundhog life
PImage groundhogImag;//int groundhog
PImage robotImag;//int robot
PImage soldierImag;//int soldier
int x = 0;//the soldier walk and go back use
int lightPos = 240;//the lightpos shoot and go back

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
  strokeWeight(15.0);//The above is the code for the grass. I put it here because it will block the groundhog's feet.
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
  
  strokeWeight(10.0);//There code are used to let the lightPos can be action
    strokeCap(ROUND);
    stroke(255,0,0);//color
    line(lightPos -40, 240+37, lightPos, 240+37);//Let the lightPos in the correct seat
       lightPos = lightPos-2;//Let the lightPos turn left
     if(lightPos<-500){//let lightPos go back
       lightPos = 240+30;
     }


    stroke(255,255,0);//the sun outside color
    fill(253,184,19);//the sun inside color
    circle(520, 30, 160);//the sun size and location
}
