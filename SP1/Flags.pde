class Flags {
  int y;
    int flagHeight = 15;
    int flagWidth = 20;

  Flags(int y) {
    this.y = y;
  }


  void displayFlags() {

    fill(255, 0, 0);
    for (int x = flagWidth; x < width; x += width/10) {
      //flag
      noStroke();
      rect(x, y, flagWidth, flagHeight);
      triangle(x, y, x, y + (flagHeight/2), x-(flagWidth/3), y);
      triangle(x, y+(flagHeight/2), x, y + flagHeight, x-(flagWidth/3), y+flagHeight);

      //flagpole
      strokeWeight(2);
      stroke(0);
      line(x+flagWidth, y, x + flagWidth, y + flagHeight+100);
      circle(x + flagWidth, y-3, 3);
    }
    noStroke();
  }

}
