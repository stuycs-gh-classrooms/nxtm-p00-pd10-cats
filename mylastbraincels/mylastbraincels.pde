String[] modes = {"Moving", "Bounce", "Gravity", "Spring", "Drag", "DragH", "DragM", "DragL", "Custom", "Combo"};
boolean[] status = new boolean[10];

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  displayToggles();
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
    rect(i * 60, 0, 60, 20);
  } //create the rectangles

  for (int m = 0; m < 10; m++) {
    fill(0);
    text(modes[m], m * 60, 0);
  } //create the text
}
