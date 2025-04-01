int NUM_ORBS = 2;
int orbCount;
int MIN_SIZE = 10;
int MAX_SIZE = 60;
float MIN_MASS = 10;
float MAX_MASS = 100;

Orb[] orbs;
String[] modes = {"Moving", "Bounce", "Gravity", "Spring", "Drag", "DragH", "DragM", "DragL", "Custom", "Combo"};
boolean[] status = new boolean[10];

void setup() {
  size(600, 600);
  makeOrbs();
}

void draw() {
  background(255);
  displayToggles();
}

void makeOrbs() {
  orbCount = NUM_ORBS;
  println(orbCount);
  orbs = new Orb[orbCount];
  for (int i = 0; i < orbCount; i++) {
    orbs[i] = new Orb();
    println(orbs[i].center.x);
  }
}

void displayToggles() { //make the rectangles
  textAlign(LEFT, TOP);
  textSize(18);

  for (int i = 0; i < 10; i++) {
    if (status[i]) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    rect(i * 60, 0, 60, 20);
  } //create the rectangles

  for (int m = 0; m < 10; m++) {
    fill(0);
    text(modes[m], m * 60, 0);
  } //create the text
}
