public int wow = 10;

public void setup() {
  size(600, 600);
  rectMode(CENTER);
}

public void draw() {
  background(0);
  myFractal(width/2, height/2, 300);  // start with a reasonable size
}

void keyPressed() {
  if (key == 'w') { 
    wow += 10; 
  } else if (key == 's' && wow > 5) {
    wow -= 10;
  }
}

public void myFractal(int x, int y, int siz) {
  stroke(204,102,0);
  fill(0);
  pushMatrix();
  //translate(x,y);
  //rotate(HALF_PI*siz);
  square(x, y, siz);
  popMatrix();

  if (siz/2 > wow) {
    myFractal(x - siz/2, y + siz/2, siz/2);
    myFractal(x + siz/2, y + siz/2, siz/2);
    myFractal(x - siz/2, y - siz/2, siz/2);
    myFractal(x + siz/2, y - siz/2, siz/2);
  }
}

