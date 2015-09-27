walker [] group;
PImage umbrella;
void setup()
{
   size(800, 800);
   background(0); 
   //myX = 0;
   //myY = 0;
   //mySize = 20;
    group = new walker[8000];
    for(int a = 0; a < group.length; a++)
       {
         group[a] = new walker();
       }  
   umbrella=loadImage("umbrella.png");
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
   image(umbrella, mouseX-147, mouseY-225);
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
     mySize = 2;
  }
  
  void walk()
  {

      myX = myX + (int)(Math.random()*11)-5;
      myY = myY + (int)(Math.random()*11)-4;
      if(myY==800)
        myY=0;
      if(myX==0||myX==800)
        myX=(int)(Math.random()*800);  
      if(myX>mouseX-147 && myX<mouseX+151 && myY>mouseY-150)
        myX=(int)(Math.random()*800);
  }
  void show()
  {
       fill(255, 255, 255);
       noStroke();
       ellipse(myX, myY, mySize, mySize);
  }
}