HelperFunctions hf = new HelperFunctions();
int angle = 0;
Brush brush;

void setup() {
 //size(300, 300, PDF, "color.pdf"); //size of canvas 
 size(640, 300); //size of canvas
 frameRate(24); //for animations draws 24 frames per second  smooth(); //smooths animation frame transitions
 smooth(); //smooths animation frame transitions
 //noLoop(); //only calls draw one time
 
 //brush = new Brush(40, height/3);
 brush = new Brush(100, 20);
} 
 
float randAngle = random(360);

void draw() {
  background(255);
  noFill();
  ColorPalette randomC = new ColorPalette(); //random color   float cx = width/2;
  
  brush.setColor(0);
  brush.moveTo(mouseX, mouseY);
  brush.show();
  
  //hf.save("img");
}
