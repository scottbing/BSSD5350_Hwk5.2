import java.util.List;

public class Bristle {

  ArrayList<PVector> vertices = new ArrayList<PVector>(); 
  float x;
  float y;
  float offsetX;
  float offsetY;
  color lineCol;
  float alphaVal = 255;

  public Bristle() {}
  
  public void setOffset(float oX, float oY) {
    offsetX = oX;
    offsetY = oY;
  }

  public void setColor(color col) { 
   lineCol = col;
   alphaVal = 255;
   vertices.clear();
  }

  public void moveTo(float px, float py){ 
    if (x != px && y != py) {  //do not store a move if none made
      x = px + offsetX;
      y = py + offsetY;
      alphaVal -= int(random(0,3));
      vertices.add(new PVector(x,y));
    }
  }

  public void show(){
    // get a sublist of the last 4 points.
    int len = vertices.size();
    List<PVector> subpoints = vertices.subList(max(0, len-4), len);
    
    stroke(lineCol, alphaVal);
    beginShape();     //draw one large curve with all com
    for(int i=0; i<subpoints.size(); i++){
      PVector vc = subpoints.get(i);
      curveVertex(vc.x, vc.y);
   }
   endShape();
  }
}
