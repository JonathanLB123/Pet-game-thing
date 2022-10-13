float hunger = 450;
int posX = 50;
int posY = 50;


void setup() {
  size(500, 500);
}

void draw() {
  background(0);

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
  if (mouseButton == LEFT && mouseX > posX - 25 && mouseY < posX + 25 && mouseY > posY - 25 && mouseY < posY + 25) {
    if (hunger < 450) {
      hunger += 50;
    }

    posX = int(random(width));
    posY = int(random(height));
  }
}
