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
  
  public void moveTo(float px, float py) {
    if(x != px && y != py) {
      alphaVal -= int(random(0,3));
      }
       vertices.add(new PVector(x,y));
      x = px + offsetX;
      y = py + offsetY;  
  }
  
  public void show(){
    // get a sublist of the last 4 points.
    int len = vertices.size();
    List<PVector> subpoints = vertices.subList(max(0, len-4), len);
    
    stroke(lineCol, alphaVal);
    beginShape();
    PVector vc = subpoints.get(0);
    curveVertex(vc.x, vc.y);
    for (int i=0; i<subpoints.size(); i++) {
      vc = subpoints.get(i);
      curveVertex(vc.x, vc.y);
    }
    curveVertex(vc.x, vc.y);
    endShape();
  }
}
