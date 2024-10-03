class Car {
  float x;
  float y;
  color c;

  Car(float x, float y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
  }


  void displayCar() {
    rectMode(CORNER);
    noStroke();
    int carWidth = 70;
    int carHeight = 25;

    //Car
    fill(c);
    rect(x, y, carWidth, carHeight);
    rect(x + 15, y - 15, carWidth - 30, carHeight-10);

    //Window
    fill(170, 200, 250);
    rect(x + 20, y - 10, 30, 10);

    //Wheels
    fill(0);
    circle(x + 20, y + carHeight, 15);
    circle(x + carWidth - 20, y + carHeight, 15);
  }

  void carMove() {
    if (mousePressed) {
      x = 0;
    } else {
      x = x + random(0.5, 4);
      if ((x > width)) {
        x = 0;
      }
    }
  }
}
