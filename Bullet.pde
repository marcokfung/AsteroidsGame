class Bullet extends Floater {
  
 Bullet(Spaceship joe) {
   myCenterX = joe.getX();
   myCenterY = joe.getY();
   myPointDirection = joe.getPointDirection();
  double dRadians = myPointDirection*(Math.PI/180);
   myXspeed = 5*Math.cos(dRadians)+ joe.getSpeedX();
   myYspeed = 5*Math.sin(dRadians)+ joe.getSpeedY();

 }
 
 public void show()
  {
    
    fill(255,255,0);
    stroke(225, 225, 0);
    strokeWeight(2);
    ellipse((int)myCenterX,(int)myCenterY,3,3);
  }

public void move()
  {
    myCenterX+=myXspeed;
    myCenterY+=myYspeed;
  }


 public double getX(){
     return myCenterX;
    }
    
    public double  getY(){
    return myCenterY;
   }
   
   public double getSpeedX(){
    return myXspeed;
   }
   
    public double getSpeedY(){
    return myYspeed;
}

public double getPointDirection(){
  return myPointDirection;
}

 
 
}
