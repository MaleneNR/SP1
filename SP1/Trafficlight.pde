class Trafficlight {
  int x = 0;
  int y = 0;
  int trafficlightWidth;
  int trafficlightHeight = trafficlightWidth*2;

  Trafficlight(int x, int y, int trafficlightWidth, int trafficlightHeight) {
    this.x = x;
    this.y = y;
    this.trafficlightWidth = trafficlightWidth;
    this.trafficlightHeight = trafficlightHeight;
    
  }
  

  void displayTrafficlight() {
    fill(0);
    rectMode (CORNER);
    rect(x, y, trafficlightWidth, trafficlightHeight);
    rectMode(CENTER);
    rect(x+trafficlightWidth/2, y+trafficlightHeight, 8, 200);
    rectMode(CORNER);
  }


  void displayLights() {
  color r = color(255, 0, 0);
  color yellow = color(255, 255, 0);
  color g = color(0, 255, 0);
  color lightOff = 50;

  int ellipseW = trafficlightWidth/3;
  int ellipseH = trafficlightWidth/3;
  int ellipseX = x + (trafficlightWidth/2);
  int ellipseRedY = y + (trafficlightHeight/4);
  int ellipseYellowY = y + (trafficlightHeight/2);
  int ellipseGreenY = y + ((trafficlightHeight/4)*3);

    println(frameCount);
    ellipseMode (CENTER);
    
    //Displays with the light turned off
    fill(lightOff);
    ellipse(ellipseX, ellipseRedY, ellipseW, ellipseH);
    ellipse(ellipseX, ellipseYellowY, ellipseW, ellipseH);
    ellipse(ellipseX, ellipseGreenY, ellipseW, ellipseH);
    
    switch(frameCount%400) {
    case 100://red
      fill(r);
      ellipse(ellipseX, ellipseRedY, ellipseW, ellipseH);
      break;
    case 200://red+yellow
      fill(r);
      ellipse(ellipseX, ellipseRedY, ellipseW, ellipseH);
      fill(yellow);
      ellipse(ellipseX, ellipseYellowY, ellipseW, ellipseH);
      break;
    case 300://green
      fill(g);
      ellipse(ellipseX, ellipseGreenY, ellipseW, ellipseH);
       break;
    case 0://yellow
      fill(yellow);
      ellipse(ellipseX, ellipseYellowY, ellipseW, ellipseH);
    }
  }
}
