/**
 * flush class for cleaning poo
 */
 
 class Flush
{
  //properties
  //i delted them
  
  //constructor
  public Flush(float xPos, float yPos, float rectW, float rectH, color colFill)
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
    text("flush", x, y+rectHeight-rectHeight/4);
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
  
} // end of class
