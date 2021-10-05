int sum=0;
void setup()
{
  size(500,500);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  for(int j=1;j<=7;j++)
  {
    for(int i=1;i<=7;i++)
    {
    Die bob=new Die(i*60,60*j);
    bob.show();
    }
  }
  textSize(30);
  textAlign(CENTER);
  fill(0);
  text(sum,250,475);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die
{
  int number;
  int myX, myY;
  Die(int x, int y)
  {
    roll();
    myX=x;
    myY=y;
  }
  void roll()
  {
    int random=(int)(Math.random()*6);
    if(random<1)
    {
      number=1;
    }
    else if(random<2)
    {
      number=2;
    }
    else if(random<3)
    {
      number=3;
    }
    else if(random<4)
    {
      number=4;
    }
    else if(random<5)
    {
      number=5;
    }
    else
    {
      number=6;
    }
  }
  void show()
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX-25,myY-25,50,50);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    if(number==1)
    {
      ellipse(myX,myY,10,10);
      sum=sum+1;
    }
    else if(number==2)
    {
      ellipse(myX+13,myY+13,10,10);
      ellipse(myX-13,myY-13,10,10);
      sum=sum+2;
    }
    else if(number==3)
    {
      ellipse(myX,myY,10,10);
      ellipse(myX+13,myY+13,10,10);
      ellipse(myX-13,myY-13,10,10);
      sum=sum+3;
    }
    else if(number==4)
    {
    ellipse(myX-13,myY-13,10,10);
    ellipse(myX+13,myY+13,10,10);
    ellipse(myX+13,myY-13,10,10);
    ellipse(myX-13,myY+13,10,10);
    sum=sum+4;
    }
    else if(number==5)
    {
    ellipse(myX,myY,10,10);
    ellipse(myX-13,myY-13,10,10);
    ellipse(myX+13,myY+13,10,10);
    ellipse(myX+13,myY-13,10,10);
    ellipse(myX-13,myY+13,10,10);
    sum=sum+5;
    }
    else
    {
    ellipse(myX+13,myY,10,10);
    ellipse(myX+13,myY+13,10,10);
    ellipse(myX+13,myY-13,10,10);
    ellipse(myX-13,myY,10,10);
    ellipse(myX-13,myY-13,10,10);
    ellipse(myX-13,myY+13,10,10);
    sum=sum+6;
    }
  }
}
