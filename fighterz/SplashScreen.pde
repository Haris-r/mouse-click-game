class SplashScreen{
  
  int counter =0;
  void display(){
  
    
    
  if(counter < 10){
    
  image(Start, 0,0, width, height);
  }
  else if(counter < 20){
  image(Start2, 0,0, width ,height);
  }
  else{
  
    counter =0;
  }
   counter+=1;  
   
  spaceBar();
  }
 
  void spaceBar(){
    
    textSize(40);
    fill(127,0,255);
    text("Press space bar to play",30,600);
  
  }
}
