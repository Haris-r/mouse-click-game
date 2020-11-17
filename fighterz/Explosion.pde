class Explosion
{
  int x;
  int y;
  int size = 100;
  int counter;
  PImage expl1;
  PImage expl2;
  PImage expl3;
  PImage expl4;
  PImage expl5;
  
  Explosion(int x,int y,PImage expl1, PImage expl2, PImage expl3, PImage expl4, PImage expl5){
    
    this.x = x;
    this.y = y;
    this.expl1 = expl1;
    this.expl2 = expl2;
    this.expl3 = expl3;
    this.expl4 = expl4;
    this.expl5 = expl5;
   
    
  }
  
  void display(){
  
    if(counter < 10){
    
      image(expl1, x,y,size, size);
    }
    else if(counter < 20){
      image(expl2, x,y,size, size);
    }
    else if(counter < 30){
      image(expl3, x,y,size, size);
    }
    else if(counter < 40){
      image(expl4, x,y,size, size);
    }
    else if(counter < 50){
      image(expl5, x,y,size, size);
    }
    else{
      counter =0;
    }
    
    counter+=1;
    
  
  }
  
}
