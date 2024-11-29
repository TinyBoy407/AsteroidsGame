Spaceship bob = new Spaceship();//your variable declarations here
Star[]nightSky = new Star[100];
public void setup() 
{
  size(400,400);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  bob.show();//your code here
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
}

public void keyPressed(){
  if(key == 'w'){
     bob.accelerate(0.5);
     bob.move();
     bob.show();
   }
   if(key == 'a'){
     bob.turn(4);
     bob.move();
     bob.show();
   }
   if(key == 'd'){
     bob.turn(-4);
     bob.move();
     bob.show();
   }
   if(key == 'h'){
     bob.hyperspace();
     bob.show();
    }
  }
