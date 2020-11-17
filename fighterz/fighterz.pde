PImage background;
PImage loser;
PImage Start;
PImage Start2;

PImage badGuy;
PImage badGuy1;
PImage badGuy2;

PImage expl1;
PImage expl2;
PImage expl3;
PImage expl4;
PImage expl5;

int backgroundY = 0;

int score= 0;
int lives = 3;

boolean run = true;
boolean end = false;
boolean gameMode = end;

ArrayList<Saibaman> saibaman;
ArrayList<Explosion> Explosions;

Yamcha warrior;
SplashScreen menu;
Beam bullet;



void setup(){
size(500,700);

Start = loadImage("Start.png");
Start2 = loadImage("Start2.png");

loser = loadImage("dead.png");
loser.resize(width, height);

background = loadImage("terrain.jpg");

badGuy = loadImage("saibaman.png");
badGuy1 = loadImage("saibaman1.png");
badGuy2 = loadImage("saibaman2.png");

expl1 = loadImage("exp1.png");
expl2 = loadImage("exp2.png");
expl3 = loadImage("exp3.png");
expl4 = loadImage("exp4.png");
expl5 = loadImage("exp5.png");

background.resize(width, height);

bullet = new Beam(0-50,0-50,200,200,5);
menu = new SplashScreen();
warrior = new Yamcha(250);

saibaman = new ArrayList <Saibaman>();
Explosions = new ArrayList <Explosion>();
}

  void draw(){
    
    if(gameMode == end && lives > 0){
    menu.display();
    }
    
    if(gameMode == run)
    {
      image(background, 0,0);
      moveBackground();
      warrior.render();
      bullet.update();
      
      textSize (20);
      fill(255,255,0);
      text("Score:" + score, 400, 500 );
      text("Lives: "+ lives, 400,550  );
      
      for(Explosion boom : Explosions){
        
        boom.display();
      
      
      }
        
        for(int i =0; i < 10; i++){
          
          saibaman.add(new Saibaman(100,200,3, badGuy, badGuy1, badGuy2));
          
          Saibaman SAIBAMAN = saibaman.get(i);
          
          SAIBAMAN.update();
          
          if(SAIBAMAN.gameOver()){
            
            saibaman.remove(i);
            lives -=1;
          }
         
        }
        
        if(lives == 0){
          
                image(loser,0, 0);
                fill(134,43,200);
                textSize(40);
                text("YOU GOT YAMCHAED!", 30, 600);
                gameMode = end;
          
        }
        
  
      
    }
    
   
  }

void moveBackground()
{
  image(background, 0, backgroundY);
  image(background, 0, background.height+ backgroundY);
  backgroundY -=4;
  if(backgroundY == -background.height)
  {
    backgroundY = 0;
  }

}


void mousePressed(){
  
  if(mouseButton == LEFT){
    bullet.changeColor();
    for (int i =0; i<saibaman.size(); i++){
      Saibaman s = (Saibaman) saibaman.get(i);
      if (dist(s.x,s.y,mouseX,mouseY)<50) {
        saibaman.remove(i);
        Explosions.add(new Explosion((int)s.x, (int)s.y, expl1,expl2,expl3,expl4,expl5));
        score ++;
      }
    }
    }
}



void mouseReleased(){
  if(mouseButton == LEFT){
 bullet.changeColor();
  }
}

 
void keyPressed(){
  
   if( keyCode == ' ' && gameMode == end){
    gameMode = run;
    setup();
    score = 0;
  }
}
