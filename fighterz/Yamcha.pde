PImage defender;


class Yamcha{
  int x;
  int y;
  int size;
  
  Yamcha(int xPos){
    this.x = xPos;

    defender = loadImage("yamcha.png");
    defender.resize(175,175);
  }
  
  void render()
  {
    image(defender, width/4+20, 600);


  }
 



}
