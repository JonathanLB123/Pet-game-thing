float hunger = 450;
int posX = int(random(width - 50));
int posY = int(random(height - 50));

void setup() {
  size(500, 500);
}

void draw() {
  background(0,0,50);

  strokeWeight(10);
  stroke(255);
  
  if (hunger < 150){
    stroke(255,0,0);
  }
  
  line(50, 400, hunger, 400);

  if (hunger > 50) {
    hunger -= 0.1;
  } else if (hunger <= 50) {
    textSize(50);
    fill(255, 0, 0);
    text("GAME OVER", 130, 200);
  }

  food();
}

void food() {
  noStroke();
  fill(255, 0, 0);
  circle(posX, posY, 50);
}

void mousePressed() {
  if (mouseButton == LEFT && colition(posX, posY) == true) {
    if (hunger < 420) {
      hunger += 50;
    }

    posX = int(random(width - 50));
    posY = int(random(height - 50));
  } 
}

boolean colition(int valX, int valY){
  boolean monkaW = false;
  
  if(mouseX < valX + 25 && mouseX > valX - 25 && mouseY < valY + 25 && mouseY > valY -25){
    monkaW = true;
  }
  
  return monkaW;
}
