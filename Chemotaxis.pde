walker [] group;
void setup()
{
   size(800, 800);
   background(0); 
   //myX = 0;
   //myY = 0;
   //mySize = 20;
    group = new walker[4000];
    for(int a = 0; a < group.length; a++)
       {
         group[a] = new walker();
       }  
}

void draw()
{  
   fill(0,0,0);
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
     mySize = (int)(Math.random()*3)+2;
  }
  
  void walk()
  {

      myX = myX + (int)(Math.random()*11)-5;
      myY = myY + (int)(Math.random()*11)-3;
      if(myY==800)
     {
      myY=0; 
     }
     if(myX<-10 || myX>810)
     {
      myY=0;
      myY = myY + (int)(Math.random()*11)-4;
     }
  }
  void show()
  {
       fill(255, 255, 255);
       noStroke();
       ellipse(myX, myY, mySize, mySize);
  }
}