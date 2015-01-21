public int sX, sY;
public void setup()
{
	size(500,500);
	frameRate(5);
}
public void draw()
{
	sierpinski(sX, sY, 400);
}
public void mouseDragged()//optional
{
	sX = pmouseX;
	sY = pmouseY;
}
public void sierpinski(int x, int y, int len) 
{
	if(len>=20) {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
	else {
		int r = (int)(Math.random()*255);
		int g = (int)(Math.random()*255);
		int b = (int)(Math.random()*255);
		fill(r,g,b);
		noStroke();
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
}