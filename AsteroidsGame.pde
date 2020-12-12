//your variable declarations here
ArrayList <Bullet> shots = new ArrayList<Bullet>();
ArrayList <Asteroid> beta = new ArrayList<Asteroid>();
Star[] sky = new Star[200];
Spaceship alpha = new Spaceship();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
    beta.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  alpha.show();
  alpha.move();
  for(int i = 0; i < beta.size(); i++){
      beta.get(i).show();
      beta.get(i).move();
      float d = dist((float)alpha.getX(), (float)alpha.getY(),(float)beta.get(i).getX(), (float)beta.get(i).getY());
      if ( d < 15){
        beta.remove(i);
      }
  }
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    for(int j = 0; j < shots.size(); j++){
      if(10<dist((float)beta.get(i).getX(),(float)beta.get(i).getY(),(float)shots.get(j).getX(),(float)shots.get(j).getY())){
        beta.remove(i);
        shots.remove(j);
        break;
      }
    }
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
  }else if(key == 'f'){
    shots.add(new Bullet(alpha));
  }
}
