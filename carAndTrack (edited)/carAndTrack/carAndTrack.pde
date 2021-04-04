Car[] car; //<>//
RaceTrack track;
boolean raceOver;

void setup() {
  size(1000, 600);
  track = new RaceTrack();
  car=new Car[11];
  for (int i=0; i<=car.length-1; i++) {
    int temp=i*50;
    //car[i]=new Car(track.getStartPosition(), 50+temp, 60, color(200, 100, 100));
    car[i]=new Car(track.getStartPosition(), 50+temp, 60, color(int(random(10, 255)), int(random(10, 255)), int(random(10, 255))));
  }
  //car = new Car(track.getStartPosition(), 100, 60, color(200, 100, 100));
  raceOver = false;
}

void draw() {
  background(70);
  track.display();
  for (int i=0; i<car.length; i++) {
    car[i].display(i);
    //car.display();
    if (!raceOver) {
      if (car[i].getPosition() >= track.getFinishPosition()) {
        raceOver = true;
        car[i].increaseScore(i);
        println("Press 's' to restart");
      } else {
        car[i].move();
      }
    }
  }
}

void keyPressed() {
  if (key == 's' && raceOver) {
    float startLine = track.getStartPosition();
    for (int i=0; i<car.length; i++) {
      car[i].setPosition(startLine);
      raceOver = false;
    }
  }
}
