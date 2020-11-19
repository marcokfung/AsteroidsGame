class Star //note that this class does NOT extend Floater
{
  int x, y;
  Star(){
   x = (int)(Math.random() * 400);
   y = (int)(Math.random() * 400);
  }
  void show(){
   fill(255);
   ellipse(x,y,1,1);
  }
}
