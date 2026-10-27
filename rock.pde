/**
 * take care of pet rock. he need food. he need to poo. he will get embarrassed if his poo is not cleaned up.
 * using buttons, the user must ensure their pet rock stays happy and healthy and can moniter this through
 * updates shown on the console!
 * @author EMILY
 * @version FEB 25 /25
 */

//object declaration
PetRock petRock; //the actual pet rock
Flush flush; //flush button
Feed feed; //feed button

void setup()
{
  size(600, 600);
  background(255);
  
  initialize(); //initializing/instantiating objects
}

void draw()
{
  drawScreen();
  
  makePoop(); 
  
  buttonPressing(); 
}//end of draw


/**
 * insitializing/instantiating objects
 */

void initialize()
{
  petRock = new PetRock(width/2, height/5*4, 160, 80, 40, #747786);
  flush = new Flush(width/6, height/6, width/6, height/12, #92D8DB);
  feed = new Feed(4*width/6, height/6, width/6, height/12, #F0C091);
}//end of initialize

/**
 * sets up screen - draws buttons, rock, etc.
 */

void drawScreen()
{
  surface.setTitle("love thy rock"); // set awesome title that reminds user of goal + resposibility
  
  //display elements
  petRock.display();
  flush.display();
  feed.display();
}//end of draw screen

/**
 * draws poop every 2 seconds
 */

void makePoop()
{
  //poop every 2 seconds
  if (frameCount % 120 == 0)
  {
    petRock.poop();
    print("  your pet rock feels embarrased...  ");
  }//end of if frame count
}// end of make poop

/**
 * the button pressing process!!
 */

void buttonPressing()
{
  if(mousePressed) //if user clicks on button
  {
    flushPoo(); //button 1 - user can flush poo
    feedRock(); // button 2 - user can feed rock
  } //end of mouse pressed
}//end of button pressing

/**
 * 'flushes' poo (when button pressed) - draws new screen with no poo on top
 */
 
void flushPoo()
{
    if(flush.intersect(mouseX, mouseY)) 
    {
      petRock.flushThePoo(255);
      print("  your pet rock thanks you!  ");
    }//end of flush intersect
}//end of flush poo

/**
 * 'feeds' rock (when button pressed) - rock will smile as it is no longer hungry
 */

void feedRock()
{
  if(feed.intersect(mouseX, mouseY)) 
    {
      petRock.smile();
      print("  your pet rock feels happy!  ");
    }//end of feed
}//end of feed rock
