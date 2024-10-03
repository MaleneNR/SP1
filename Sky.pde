class Sky {
  int diam;
  
  //They will appear in random spots at the blue background 
  float x = random(0, width);
  float y = random(0, height/3);


  Sky(int diam) {
    this.diam = diam;
  }

  void displaySky() {   
    fill(255);
    circle(x, y, diam);
    circle(x-diam/2, y, diam/2);
    circle(x+diam/2, y, diam/2);
  }

  float randomSpeed() {
    return random(1);
  }


  void moveSky() {  
    x -= randomSpeed();    //moving the sky in a random speed from method 'randomSpeed'
    if (x <= 0) {
      x = width;
    }
  }
}
