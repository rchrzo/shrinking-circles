int gridHeight;
int gridWidth;
float circleRadius;

void setup() {
  
 gridHeight = 5;
 gridWidth = 10;
 circleRadius = 2;
 size(600, 600);

 
}

void draw() {
  clear();
  float theMousex = constrain(mouseX/10, 2, 50);
  float theMousey = constrain(mouseY/10, 2, 50);
  drawGridofCircles(gridHeight, gridWidth, theMousex, theMousey);
  
}

void drawGridofCircles(int theHeight, int theWidth, float theRadius, float theMousey) {
  float stepSize = theMousey;
   
   for (float column_num = 0; column_num <= theWidth; column_num++) {
     for (float row_num = 0; row_num <= theHeight; row_num++) {
       float x = column_num*2*stepSize;
       float y = row_num*2*stepSize;
       ellipse(x, y, theRadius, theRadius);
     }
   }
}
