class Road {
  int x, y, w, h;

  Road(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void displayRoad() {
    fill(150);
    rect(x, y, w, h);
    //Vejbanestriber
    for (int x = 0; x <= w; x = x + width/12) {
      rectMode (CENTER);
      fill(255);
      rect(x, y+(h/2), width/24, h/16);
    }
  }

  void displayRaceTrackStripes() {
    rectMode (CENTER);
    int stripesHeight = h/24;
    
    //Upper stripes
    fill(255);
    rect(x+(w/2), y, w, stripesHeight); // w/2, because rectMode is center for the stripes, so it needs to start in the middle.
    
    for (int x = 0; x < w; x = x + width/24) { //x += width/24 is how often a new stripe appears
      fill(255, 0, 0);
      rect(x, y, width/48, stripesHeight);
    }
    
    //Lower stripes, means the only differences is y+h
    fill(255);
    rect(x+(w/2), y+h, w, stripesHeight);
    
    for (int x = 0; x < w; x = x + width/24) {
      fill(255, 0, 0);
      rect(x, y+h, width/48, stripesHeight);
    }
  }
}
