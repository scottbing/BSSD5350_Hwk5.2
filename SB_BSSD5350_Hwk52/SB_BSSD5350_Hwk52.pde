HelperFunctions hf = new HelperFunctions();
Brush brush;

int angle = 0;
ArrayList<PVector> verticesA = new ArrayList<PVector>();
ArrayList<PVector> verticesB = new ArrayList<PVector>();
float randAngle = random(360);


void setup() {
  //size(300, 300, PDF, "color.pdf"); //size of canvas 
  size(640, 300); //size of canvas
  frameRate(24); //for animations draws 24 frames per second  smooth(); //smooths animation frame transitions
  smooth(); //smooths animation frame transitions
  
  brush = new Brush(100, 20);
  //noLoop(); //only calls draw one time
}

void mousePressed(){
  ColorPalette randomC = new ColorPalette();
  brush.setColor(randomC.getBaseColor());
  brush.load();
}

void draw() {
  background(255);
  noFill();
  //ColorPalette randomC = new ColorPalette(); //random color   float cx = width/2;
  //brush.setColor(0);
  brush.moveTo(mouseX, mouseY);
  brush.show();
  //hf.save("img");
}
