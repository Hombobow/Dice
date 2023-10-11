void setup(){
  size(1000, 1000);
  background(0);
  noLoop();
}

int sum;
float avgc = 0;

void mousePressed(){
  sum = 0;  
  redraw();
}

void draw(){
  
  strokeWeight(5);
  stroke(255);
  for(int i = 0; i < 1000; i += 100){
    line(0, i, 1000, i);
    line(i, 0, i, 1000);
  }
  fill(0);
  rect(100,100,800,800);
  
  for(int i = 350; i < 600; i+=110){
    for(int j = 350; j < 650; j += 110){
      Dice dye = new Dice(i,j);
      dye.show();
      avgc += 1;
      sum += dye.show();
      }
  }
  fill(255);
  textSize(25);
  text("sum of rolls: " + sum, 150,200);
  text("avg of rolls: " + Double.toString(sum/avgc), 150, 250);
}

class Dice{
  int chance, x, y;
  
  Dice(int myX, int myY)
  {
    x = myX;
    y = myY;
  }
  
  int show(){
    fill(255);
    rect(x,y,100,100);
    fill(0);
    chance = (int) (Math.random() * 6 + 1);
    if(chance == 1){
      ellipse(x + 50, y + 50, 25,25);
    }
    else if(chance == 2)
    {
      ellipse(x + 20, y + 20, 25,25);
      ellipse(x + 80, y + 80, 25,25);
    }
    else if(chance == 3)
    {
      ellipse(x + 20, y + 20, 25,25);
      ellipse(x + 80, y + 80, 25,25);
      ellipse(x + 50, y + 50, 25,25);
    }
    else if(chance == 4)
    {
      ellipse(x + 20, y + 20, 25,25);
      ellipse(x + 80, y + 80, 25,25);
      ellipse(x + 20, y + 80, 25,25);
      ellipse(x + 80, y + 20, 25,25);
    }
    else if(chance == 5)
    {
      ellipse(x + 20, y + 20, 25,25);
      ellipse(x + 80, y + 80, 25,25);
      ellipse(x + 20, y + 80, 25,25);
      ellipse(x + 80, y + 20, 25,25);
      ellipse(x + 50, y + 50, 25,25);
    }
    else
    {
      ellipse(x + 20, y + 20, 25,25);
      ellipse(x + 80, y + 80, 25,25);
      ellipse(x + 20, y + 80, 25,25);
      ellipse(x + 80, y + 20, 25,25);  
      ellipse(x + 20, y + 50, 25,25);
      ellipse(x + 80, y + 50, 25,25);
    }
    return chance;
  }
}
