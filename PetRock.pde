/**
 * pet rock class for pet rock
 */
 
 class PetRock
{
  //properties
  private float x, y; //coordinates of pet rock
  private float rockWidth, rockHeight; //size attributes of pet rock
  private float eyeSize; //size of eye of pet rock
  private color fill; //pet rock colour

  
  //constructor
  public PetRock(float xPos, float yPos, float rockW, float rockH, float eyez, color colFill)
  {
    x = xPos;
    y = yPos;
    rockWidth = rockW;
    rockHeight = rockH;
    fill = colFill;
    eyeSize = eyez;
  }
  
  /**
   * displays rock - accessor
   */
  public void display()
  {
    noStroke();
    fill(fill);
    ellipse(x,y,rockWidth,rockHeight); //rock
    
    fill(255);
    circle(x+rockWidth/2-rockWidth/3,y-rockHeight/2+35,eyeSize); //left eye white
    circle(x+rockWidth/2-rockWidth/3*2,y-rockHeight/2+35,eyeSize); //right eye white

    fill(0);
    circle(x+rockWidth/2-rockWidth/3,y-rockHeight/2+35,eyeSize/3*2); //left eye black
    circle(x+rockWidth/2-rockWidth/3*2,y-rockHeight/2+35,eyeSize/3*2); //right eye black
    
    stroke(0);
    fill(fill);
    arc(x+rockWidth/2-rockWidth/3,y-rockHeight/2+35,eyeSize, eyeSize, radians(180), radians(360)); //left eyelid
    arc(x+rockWidth/2-rockWidth/3*2,y-rockHeight/2+35,eyeSize, eyeSize, radians(180), radians(360)); //right eyelid
  }
  

  /**
   * makes rock poo (draws poo) - mutator
   */
  public void poop()
  {
    noStroke();
    fill(#5F5949);
    circle(random(width),y,eyeSize/3); //rock will poo in a random spot along same x axis
  }//end of poo
  
  /**
   * cleans (redraws screen without any poo) the poo - mutator
   */
  public void flushThePoo(color bgFill)
  {
    background(bgFill); //will draw the background overtop
  }

  /**
   * draws smile on rock - mutator
   */
  public void smile()
  {
    stroke(0);
    noFill();
    arc(x, y+rockWidth/8, eyeSize+10, eyeSize-10, radians(0), radians(180));
  }//end of smile
  
}//end of class
  
