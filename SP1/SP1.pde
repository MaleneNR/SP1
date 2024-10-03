Road myRoad;
Trafficlight trafficlight;
Flags flags;
Car[] cars;
Sky sky1;
Sky sky2;
Sky sky3;
float heightOfGrass = height/3;

void setup() {
  size(1000, 600);
  noStroke();

  int roadStartYPosition = (height/3)*2;
  int roadHeight = height/4;

  //Declaring 5 cars by an array
  cars = new Car[5];
  int spaceBetweenCars = 28;
  for (int i = 0; i < cars.length; i++) {
    cars[i] = new Car(0, roadStartYPosition+(spaceBetweenCars*i), color (random(255), random(255), random(255)));
  }

  //Making instances of Road, Flags, Sky, and Trafficlight.
  myRoad = new Road(0, roadStartYPosition, width, roadHeight);
  flags = new Flags(100);
  sky1 = new Sky(50);
  sky2 = new Sky(60);
  sky3 = new Sky(45);
  trafficlight = new Trafficlight(width-100, height/4, 35, 100);
}


void draw() {
  noStroke();
  background(150, 175, 250);  //blue sky

  fill(255, 255, 0);
  circle(width-50, 0 + 50, 50); //sun
  fill(0, 130, 45);
  rect(0, (height/3), width, (height/3)*2); //grass

  sky1.displaySky();
  sky1.moveSky();

  sky2.displaySky();
  sky2.moveSky();

  sky3.displaySky();
  sky3.moveSky();

  flags.displayFlags();
  myRoad.displayRoad();
  myRoad.displayRaceTrackStripes();

  for (Car c : cars) {
    c.displayCar();
  }

  if (frameCount == 300) {
    println("Start!");
  }

  if (frameCount >= 300) {
    for (Car c : cars) {
      c.carMove();
    }
  }

  trafficlight.displayTrafficlight();
  trafficlight.displayLights();
}
