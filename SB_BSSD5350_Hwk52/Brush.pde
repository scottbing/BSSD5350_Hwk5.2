public class Brush {
  ArrayList<Bristle> bristles = new ArrayList<Bristle>();
  float x;
  float y;
  color lineCol;
  float r; //radius of brush
  
  public Brush(int numBristles, float radius) {
    r = radius; // preserve desired outer radius
    for (int i=0; i < numBristles; i++) {
      Bristle b = new Bristle();
      bristles.add(b);
    }
  }
  
  public void load() {
    float radius = r; // preserve desired outer radius
    for (int j=0; j < 2; radius/=2) {
      for (int i=0; i < bristles.size()/2; i++) {
        float randAngle = random(360);
        float x = (radius)/2*cos(radians(angle+randAngle));
        float y = (radius)*sin(radians(angle+randAngle));
        bristles.get(i).setOffset(x,y);
      }
    }
  }
  
  public void setColor(color col) {
    for(int i=0; i<bristles.size(); i++) {   
       bristles.get(i).setColor(col);
   }
  }
  
  public void moveTo(float px, float py){  
    x = px;
    y = py;
    for(int i=0; i<bristles.size(); i++) {   
       bristles.get(i).moveTo(x,y);
     }
   }
   
   public void show(){
     for(int i=0; i<bristles.size(); i++) {
       bristles.get(i).show();
     }
   }
}
