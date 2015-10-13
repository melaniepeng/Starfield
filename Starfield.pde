Particle[] a;
void setup()
{
	size(600,600);
	a = new Particle [100];
	for (int i = 0; i < a.length; i++)
	{
		a[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	frameRate(25);
	for (int i = 0; i < a.length; i++)
	{
		a[i].move();
		a[i].show();
	}
}
class NormalParticle implements Particle
{
	int col1,col2,col3;
	double x,y,angle,speed;
	NormalParticle()
	{
		x = 300.0;
		y = 300.0;
		angle = Math.random()*(2*Math.PI);
		speed = Math.random()*10;
		col1 = (int)(Math.random()*255);
		col2 = (int)(Math.random()*255);
		col3 = (int)(Math.random()*255);
	}
	public void move()
	{
		x = x + Math.cos(angle)*speed;
		y = y + Math.sin(angle)*speed;
		angle = angle + 0.04;
	}
	public void show()
	{
		noStroke();
		fill(col1,col2,col3,200);
		ellipse((float)x,(float)y,10,10);
	}
}
interface Particle
{
	public void show(); 
	public void move(); 
}
class OddballParticle implements Particle //uses an interface
{
	double x,y,angle, speed;
	OddballParticle()
	{

	}
	public void show()
	{

	}
	public void move()
	{
		
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

