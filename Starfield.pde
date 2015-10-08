NormalParticle[] a;
void setup()
{
	size(600,600);
	a = new NormalParticle [100];
	for (int i = 0; i < a.length; i++)
	{
		a[i] = new NormalParticle();
	}
}
void draw()
{
	background(129);
	frameRate(10);
	for (int i = 0; i < a.length; i++)
	{
		a[i].move();
		a[i].show();
	}
}
class NormalParticle
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
	void move()
	{
		x = x + Math.cos(angle)*speed;
		y = y + (Math.sin(angle)*speed);
	}
	void show()
	{
		noStroke();
		fill(col1,col2,col3,100);
		ellipse((float)x,(float)y,10,10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

