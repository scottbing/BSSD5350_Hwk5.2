public class Bristle {

  ArrayList<PVector> vertices = new ArrayList<PVector>(); 
  float x;
  float y;
  float offsetX;
  float offsetY;
  color lineCol;

  public Bristle(float oX, float oY){
    offsetX = oX;
    offsetY = oY;
  }

  public void setColor(color col) { 
   lineCol = col;
  }

  public void moveTo(float px, float py){ 
   x = px + offsetX;
   y = py + offsetY;
   vertices.add(new PVector(x,y));
  }

  public void show(){
   stroke(lineCol);
   beginShape();     //draw one large curve with all com
   for(int i=0; i<vertices.size(); i++){
     PVector vc = vertices.get(i);
     curveVertex(vc.x, vc.y);
   }
   endShape();
  }
}
