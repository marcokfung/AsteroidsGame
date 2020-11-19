//your variable declarations here
Spaceship bob = new Spaceship();
 Star[] sue = new Star[500];
public void setup() 
{
  size(400,400);
  background(0);
  bob.turn(90); 

  for (int i = 0; i < sue.length; i++){
   sue[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < sue.length; i++){
   sue[i].show(); 
  }
}

public void keyPressed(){
  if(key == 'w'){
   bob.accelerate(0.2); 
  }
  if(key == 'd'){
   bob.turn(5); 
  }
   
   if(key == 'a'){
   bob.turn(-5); 
  }
   if(key == 's'){
   bob.myCenterX =((int)(Math.random()*400));
   bob.myCenterY =((int)(Math.random()*400));
   bob.turn((double)(Math.random()*360)); 
   bob.myXspeed = 0;
   bob.myYspeed = 0;
  }
  }
