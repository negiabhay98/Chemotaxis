walker [] group;

void setup()
{
   size(800, 800);
   background(0); 
   //myX = 0;
   //myY = 0;
   //mySize = 20;
    group = new walker[5000];
    for(int a = 0; a < group.length; a++)
       {
         group[a] = new walker();
       }  
}

void draw()
{  
   fill(0,0,0,50);
   rect(0,0,800,800);
   for (int a = 0; a < group.length; a++)
   {
    group[a].walk();
    group[a].show();
   }
}

class walker 
{
  int myX = 5;
  int myY = 5;
  int mySize = 3;
  
  
  walker()
  {
     myX = (int)(Math.random()*800);
     myY = (int)(Math.random()*800);
     mySize = 3;
  }
  
  void walk()
  {

      myX = myX + (int)(Math.random()*11)-5;
      myY = myY + (int)(Math.random()*11)-5;
  
  }
  void show()
  {
       int r = (int)(Math.random()*256);
       int g = (int)(Math.random()*256);
       int b = (int)(Math.random()*256);
       noStroke();
       fill(r, g, b);
       ellipse(myX, myY, mySize, mySize);
  }
}


