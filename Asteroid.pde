class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
  rotSpeed = Math.random()*2 - 1;
  corners = 6;
  xCorners = new int[6];
  yCorners = new int[6];
  xCorners[0] = -14;
  yCorners[0] = -11;
  xCorners[1] = -10;
  yCorners[1] = -11;
  xCorners[2] = 16;
  yCorners[2] = 3;
  xCorners[3] = 9;
  yCorners[3] = 13;
  xCorners[4] = -14;
  yCorners[4] = 11;
  xCorners[5] = -9;
  yCorners[5] = 3;
  myColor = color(255);   
  myCenterX = myCenterY = Math.random()*500;
  myXspeed = Math.random()*2 - 1;
  myYspeed = Math.random()*2 - 1;
  myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
}
