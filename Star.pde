class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  public Star(){
    myX = Math.random()*400;
    myY = Math.random()*400;
  }
 
  public void show(){
    fill(255);
    ellipse((float)myX,(float)myY,1,1);
  }
}
