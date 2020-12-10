//your variable declarations here
ArrayList<Asteroid> alex = new ArrayList<Asteroid>();
ArrayList<Bullet> bill = new ArrayList<Bullet>();
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
  for(int i = 0; i < 10; i ++){
    alex.add(new Asteroid());
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
  for(int i = 0; i<alex.size(); i++){
    alex.get(i).show();
    alex.get(i).move();
  }
  for(int i = 0; i<alex.size(); i++){
   if(dist((float)bob.getX(), (float)bob.getY(), (float)alex.get(i).getX(), (float)alex.get(i).getY())<20){
    alex.remove(i);
    alex.add(new Asteroid());
   }
  }
  for(int i = 0; i < bill.size(); i++){
    bill.get(i).move();
    bill.get(i).show();
  }
   for(int i = 0; i < alex.size(); i++){
    for(int j = 0; j < bill.size(); j++) {
    if(dist((float)bill.get(j).getX(), (float)bill.get(j).getY(), (float)alex.get(i).getX(), (float)alex.get(i).getY())<20){
      alex.remove(i);
      bill.remove(j);
      alex.add(new Asteroid());
      break;
    }
  }
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
  if(key==' '){
    bill.add(new Bullet(bob));
  }
  }
