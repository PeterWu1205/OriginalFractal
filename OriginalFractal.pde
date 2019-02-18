int c = 255;
public void setup()
{
	size(600,600);
	rectMode(CENTER);
	background(0);
}
public void draw()
{
	fill(c);
	fractal(550,50,5,5);


}
public void fractal(float x, float y, float w, float l)
{
	rect(x,y,w,l);
	w++;
	l++;
	if (w < 1900)
	{
		x++;
		y++;
		rotate(PI/128);
		fractal(x,y,w+10,l+10);
		c++;
	}
}
