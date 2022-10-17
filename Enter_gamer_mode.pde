PImage squrel;

float hunger = 450;
int posX = int(random(width - 50));
int posY = int(random(height - 50));

void setup() {
  size(500, 500);
  squrel = loadImage("squrel.png");
}

void draw() {
  background(0, 0, 50);

  squrel.resize(0, 250);
  image(squrel, 100, 110);

  strokeWeight(10);
  stroke(255);

  if (hunger < 150) {
    stroke(255, 0, 0);
  }

  line(50, 450, hunger, 450);

  if (hunger > 50) {
    hunger -= 1.4;
  } else if (hunger <= 50) {
    textSize(50);
    fill(255, 0, 0);
    text("GAME OVER", 130, 100);
    text("YOU MONSTER!", 90, 400);
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

boolean colition(int valX, int valY) {
  boolean monkaW = false;

  if (mouseX < valX + 25 && mouseX > valX - 25 && mouseY < valY + 25 && mouseY > valY -25) {
    monkaW = true;
  }

  return monkaW;
}
