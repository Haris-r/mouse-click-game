class Saibaman{
  
  float x;
  float y;
  
  int speedY;
  
  PImage badGuy;
  PImage badGuy1;
  PImage badGuy2;
  
  final color BEAM = color(245,235,26);
  final color BEAM1 = color(155,157,55);
  final color BEAM2 = color(235,231,26);
  
  int counter = 0;

  Saibaman(int xPos, int yPos, int dSpeedY, PImage badGuy, PImage badGuy1, PImage badGuy2){
    
    this.x = xPos;
    this.y = yPos;
    this.speedY = dSpeedY;
    this.badGuy = badGuy;
    this.badGuy1 = badGuy1;
    this.badGuy2 = badGuy2;
    
    x = random(0,width);
    y = random(-2900,-1000);

  }

  void move()
  {
     y=y+speedY;
     
     if (y==0){
       y=height;
     }
  }
  
  
  
  void render(){
    
    counter+=1;
    if(counter < 10){
    image(badGuy, x, y, 50,60);
    }
    else if (counter < 20){
        image(badGuy1, x, y, 50,60);
    }
    else if(counter < 30){
        image(badGuy2, x, y, 50,60);   
    }else{
        counter =0;
    }
  }
  
  void update()
  {
    render();
    move();
    goal();
  }
  
  
  void goal(){
    
    x = lerp(x, width/4, 0.005);
    y = lerp(y, 500 , 0.005);
  
  
  }
  
  boolean gameOver (){
  
    if(y > height-200){
      
      return true;
    }
    return false;
  }
  
   boolean hits(){
     
     color detectedColour;
     for (int i=(int)x; i<x+100; i++)
     {
       detectedColour = get((int)i-50, (int)y);
       if (detectedColour == BEAM || detectedColour == BEAM1 || detectedColour == BEAM2 ){
          return true; 
       }
     }
     return false;
   }
   
   

}
