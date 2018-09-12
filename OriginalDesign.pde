float y = 100;
float g = 255;
float cloud = 40;
float moony = 780;
void clouds()
{
    ellipse(cloud,100,50,50);
    ellipse((cloud-20),100,40,40);
    ellipse((cloud+20),100,40,40);
    cloud = cloud + 0.5;
}
void moon()
{
  background(12,12,40);  
  fill(254,252,215);
  ellipse(130,moony,100,100);
  fill(12,12,40);
  ellipse(156,moony,100,100);
  fill(178,255,192);
  ellipse(300,970,700,700);
  moony = moony - 0.5;
    if (moony <= 120) 
       moony = 120;
}
void sun()
{
    background(255,g,0);
    fill(255,255,126);
    ellipse(400,y,100,100);
    fill(178,255,192);
    ellipse(300,970,700,700);
    fill(255,255,255);
    y = y + 0.5;
    g = g - 0.14;
    clouds();
}
void setup()
{
    size(600,800);
    frameRate(50);
    noStroke();
}
void draw()
{
    sun();
    if (g < 62) {
      moon();
    }
}



