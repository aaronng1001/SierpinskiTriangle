public void setup()
{
     size(1000,1000);
     background(0);
}
     public void draw()
{
	background(0);
     sierpinski(mouseX,mouseY,abs(mouseX-mouseY));
     noLoop();
}
public void mouseDragged()//optional
{
     redraw();
}
public void sierpinski(int x, int y, int len) {
	 fill(50,75,90);
     if (mouseX>mouseY)
     {
          if (len<50)
               triangle(x,y,x+len,y,x+(len/2),y-len);
          else{
               sierpinski(x,y,len/2);
               sierpinski(x+len/2,y,len/2);
               sierpinski(x+len/4,y-len/2,len/2);
              }
     }
     if (mouseY>mouseX)
     {
	      if (len<50)
               triangle(x,y,x+len,y,x+(len/2),y+len);
          else{
               sierpinski(x,y,len/2);
               sierpinski(x-len/2,y,len/2);
               sierpinski(x-len/4,y+len/2,len/2);
               }
     }
}
