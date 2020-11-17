
class Beam{
  
  PImage beam;
  PImage beam2;
  float x;
  float y;
  int Width;
  int Height;
  float speed, maxSpeed, minSpeed;
  boolean firing;
  int counter;
  
  Beam(int xPos, int yPos, int deltaSize, int deltaSizeY, float speed)
  {
    this.x = xPos;
    this.y = yPos;
    this.Width = deltaSize;
    this.Height = deltaSizeY;
    this.speed = speed;
    beam = loadImage("blast.png");
    beam2 = loadImage("yellowBlast.png");
    
    
  }
  
  void direction(){
    
    x = lerp(x, mouseX-150, 0.1);
    y = lerp(y, mouseY-150,0.1);
    
  }
  
  void render(){
    
    image(beam, x+50, y,200, 200);
  
  }
  
  void move(){
  y += speed;
  }
  
  void changeColor(){
    
   
     image(beam2, x+50,y,200, 200);


  }
  

   void update()
   {
     render();
     move();
     direction();
   }
     
        
      
        
      
    
}
