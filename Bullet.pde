class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    accelerate(4);
  }
 
  public void show(){
    fill(255,0,0);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
 
  public double getBulletX(){
    return myCenterX;
  }
  public double getBulletY(){
    return myCenterY;
  }
}
