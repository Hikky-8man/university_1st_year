int x= 0;

void setup() {
  size(400, 400);
}

void draw() {
  while (x<width) {
    rect(x, 0, 10, height);
    x=x+5;
  }
}
