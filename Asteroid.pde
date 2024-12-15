class Asteroid extends Floater {
  private int rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -13;
    yCorners[5] = 0;
    myColor = color(90,83,83);
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myCenterX = Math.random()*601;
    myCenterY = Math.random()*601;
    myPointDirection = Math.random()*360;
    rotSpeed = 1;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double asteroidgetX(){
    return myCenterX;
  }
  
  public double asteroidgetY(){
    return myCenterY;
  }
}
