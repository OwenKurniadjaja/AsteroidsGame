class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    accelerate(3);
  }
  public void show(){
    fill(255,0,0);
    stroke(255,0,0);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
}
