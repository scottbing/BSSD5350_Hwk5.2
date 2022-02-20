HelperFunctions hf = new HelperFunctions();
int angle = 0;
Brush brush;
float noiseSeed;

void setup() {
 //size(300, 300, PDF, "color.pdf"); //size of canvas 
 size(640, 300); //size of canvas
 frameRate(24); //for animations draws 24 frames per second  smooth(); //smooths animation frame transitions
 smooth(); //smooths animation frame transitions
 //noLoop(); //only calls draw one time
 
 // get the random seed
 noiseSeed = random(0.1, 0.5);
 println(noiseSeed);
 random(noiseSeed);
 
 //brush = new Brush(40, height/3);
 brush = new Brush(100, 20);
} 
 
void mousePressed(float r){
  ColorPalette randomC = new ColorPalette();
  brush.setColor(randomC.getBaseColor());
  brush.load(r);
}

void draw() {
  //background(255);
  int seed = int(random(1,100));
  if (frameCount % seed == 0) {
    mousePressed(random(1,100));
  }
  println(frameCount);
  if (frameCount == 200) {
    hf.save("img", "["+String.valueOf(noiseSeed)+"]");
    saveImage();
  }
  
  noFill();
  brush.moveTo(mouseX + noise(noiseSeed), mouseY + noise(noiseSeed));
  brush.show();
  
  //hf.save("img");
}

void saveImage() {

  save("name"+"-"+ noiseSeed +"-.png");
  hf.save("img", "["+String.valueOf(noiseSeed)+"]");
  println("Saved");
}
