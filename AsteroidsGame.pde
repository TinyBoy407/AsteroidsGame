Spaceship bob = new Spaceship();//your variable declarations here
Star[]nightSky = new Star[200];Asteroid sue = new Asteroid();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList<Bullet>();
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
  bob.move();
  bob.show();
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(),(float)rocks.get(i).asteroidgetX(),(float)rocks.get(i).asteroidgetY());
    if(d<12){
      rocks.remove(i);
      i--;
    }
  }
  for(int i = 0; i< shot.size();i++){
    shot.get(i).show();
    shot.get(i).move();
    if(shot.get(i).getBulletX() > 599 || shot.get(i).getBulletY() > 599 || shot.get(i).getBulletX() < 1 || shot.get(i).getBulletY() < 1){
        shot.remove(i);
      }
    for(int j = 0; j < rocks.size(); j++){
      float d1 = 15;
      if(shot.size() > 1){
      d1 = dist((float)shot.get(i).getBulletX(), (float)shot.get(i).getBulletY(),(float)rocks.get(j).asteroidgetX(),(float)rocks.get(j).asteroidgetY());
      }
      if(d1 < 12){
        shot.remove(i);
        rocks.remove(j);
        j--;
      }
    }
  }
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
   if(key == ' '){
     shot.add(new Bullet(bob));
   }
  }
