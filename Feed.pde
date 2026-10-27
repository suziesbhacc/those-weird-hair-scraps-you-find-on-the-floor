/**
 * feed class for feeding pet rock
 */
 
 class Feed
{
  //properties
  private float x, y, rectWidth, rectHeight; //button coordinates and sizing
  private color fill; //button colour
  
  //constructor
  public Feed(float xPos, float yPos, float rectW, float rectH, color colFill)
  {
    x = xPos;
    y = yPos;
    rectWidth = rectW;
    rectHeight = rectH;
    fill = colFill;
  } //end of constructor
  
  /**
   * displays button - accessor
   */
  public void display()
  {
    noStroke();
    fill(fill);
    rect(x, y, rectWidth, rectHeight);
    fill(0);
    textSize(45);
    text("feed", x, y+rectHeight-rectHeight/4);
  }// end of display
  
  /**
   * checks if driver's chosen x & y intersect with button - accessor
   */
  public boolean intersect(float xPos, float yPos)
  {
     if((xPos > x && xPos < x+rectWidth) && (yPos > y && yPos < y+rectHeight))
    { 
      return true;
    }
    else 
    {
      return false;
    }
  }//end of intersect
  
} //end of class
