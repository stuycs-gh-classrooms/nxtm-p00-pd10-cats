int NUM_ORBS = 2;
int orbCount;
int MIN_SIZE = 10;
int MAX_SIZE = 60;
float MIN_MASS = 10;
float MAX_MASS = 100;

Orb[] orbs;
String[] modes = {"Moving", "Bounce", "Gravity", "Spring", "Drag", "DragH", "DragM", "DragL", "Custom", "Combo"};
boolean[] status = new boolean[10];
int MOVING = 0;
int BOUNCE = 1;
int GRAVITY = 2;
int SPRING = 3;
int DRAGF = 4;
int DRAGH = 5;
int DRAGM = 6;
int DRAGL = 7;
int CUSTOMF = 8;
int COMBO = 9;

void setup() {
  size(600, 600);
  makeOrbs();
}

void draw() {
  background(255);
  displayToggles();
}

<<<<<<< HEAD
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
=======
void keyPressed() {
  if (key == ' ') {
    status[MOVING] = !status[MOVING];
  }
  if (key == 'b') {
    status[BOUNCE] = !status[BOUNCE];
  }
  if (key == 'g') {
    status[GRAVITY] = !status[GRAVITY];
  }
  if (key == 's') {
    status[SPRING] = !status[SPRING];
  }
  if (key == 'd') {
    status[DRAGF] = !status[DRAGF];
  }
  if (key == 'h') {
    status[DRAGH] = !status[DRAGH];
  }
  if (key == 'm' ) {
    status[DRAGM] = !status[DRAGM];
  }
  if (key == 'l' ) {
    status[DRAGL] = !status[DRAGL]; 
  }
  if (key == 'c') {
    status[CUSTOMF] = !status[CUSTOMF]; 
  }  
  if (key == 'C') {
    status[COMBO] = !status[COMBO]; 
  }
}

void displayToggles() {
>>>>>>> a3241ce336db88e009dc65a0a3a374a9f2022fde
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
