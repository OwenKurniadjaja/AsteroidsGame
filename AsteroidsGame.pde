//your variable declarations here
Star[] sky = new Star[200];
Spaceship alpha = new Spaceship();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  alpha.show();
  alpha.move();
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
}
public void keyPressed()
{
  if(key == 'a'){
    alpha.turn(-5);
  }else if(key == 'd'){
    alpha.turn(5);
  } else if(key == 's'){
    alpha.accelerate(0.3);
  } else if(key == ' '){
    alpha.hyperspace();
  }
}
