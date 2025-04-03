int NUM_ORBS = 5;
int orbCount;
int MIN_SIZE = 10;
int MAX_SIZE = 60;
float MIN_MASS = 10;
float MAX_MASS = 100;
int SPRING_LENGTH = 50;
float SPRING_K = 0.005;

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

  for (int i = 0; i < orbCount; i++) {
    orbs[i].display();
  }

  for (int i=0; i < orbCount - 1; i++) {
    drawSpring(orbs[i], orbs[i+1]);
  }
  
  if (status[MOVING]) {
    applySprings();
    //for (int o=0; o < orbCount; o++) {
    //  if (toggles[GRAVITY] == true) {
    //    orbs[o].applyForce(orbs[o].getGravity(earth, G_CONSTANT));
    //  }
    //  if (toggles[DRAGF] == true) {
    //    orbs[o].applyForce(orbs[o].getDragForce(D_COEF));
    //  }
    //}//gravity, drag

    for (int o=0; o < orbCount; o++) {
      orbs[o].move(status[BOUNCE]);
    }    
  }
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

void drawSpring(Orb o0, Orb o1)
{
  float d = dist(o0.center.x, o0.center.y, o1.center.x, o1.center.y);
  if (d > SPRING_LENGTH) {
    stroke(255, 0, 0);
  }
  if (d < SPRING_LENGTH) {
    stroke(0, 255, 0);
  }
  if (d == SPRING_LENGTH) {
    stroke(0);
  }
  line(o0.center.x, o0.center.y, o1.center.x, o1.center.y);
}//drawSpring

void applySprings() {
  for (int i = 1; i < orbs.length; i++) {
    orbs[i].applyForce(orbs[i].getSpring(orbs[i-1], SPRING_LENGTH, SPRING_K));
  }
}

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

  textAlign(LEFT, TOP);
  textSize(18);

  for (int i = 0; i < 10; i++) {
    if (status[i]) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    noStroke();
    rect(i * 60, 0, 60, 20);
  } //create the rectangles

  for (int m = 0; m < 10; m++) {
    fill(0);
    text(modes[m], m * 60, 0);
  } //create the text
}
