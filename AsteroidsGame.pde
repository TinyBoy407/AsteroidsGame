Spaceship bob = new Spaceship();//your variable declarations here
Star[]nightSky = new Star[200];
Asteroid sue = new Asteroid();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup()
{
  size(600,600);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 11; i++){
  rocks.add(i, new Asteroid());
  }
}

public void draw()
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(),(float)rocks.get(i).getX(),(float)rocks.get(i).getY());
    if(d<12){
      rocks.remove(i);
      i--;
    }
  }
  sue.move();
  bob.move();
  bob.show();
}

public void keyPressed(){
  if(key == 'w'){
     bob.accelerate(0.10);
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
     bob.hyperspace();
     bob.show();
    }
  }
