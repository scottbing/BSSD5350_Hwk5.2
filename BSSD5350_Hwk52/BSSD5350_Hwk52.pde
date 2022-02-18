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
 
void mousePressed(){
  ColorPalette randomC = new ColorPalette();
  brush.setColor(randomC.getBaseColor());
  brush.load();
}

void draw() {
  //background(255);
  noFill();
  brush.moveTo(mouseX, mouseY);
  brush.show();
  
  //hf.save("img");
}
