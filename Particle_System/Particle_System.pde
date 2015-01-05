//Creates the Arraylists Bling and Fluff that use the classes Coin and Cloud  \\
ArrayList<Coin> bling = new ArrayList<Coin>();
ArrayList<Cloud> fluff = new ArrayList<Cloud>();
PImage  goldpot;                      // Declares the picture goldpot
Rainbow rainbow;                      // Declares the Class Rainbow as rainbow
CenterOfGravity portal;               // Declares the Class CenterOfGravity as portal


void setup() {
  size(800, 600);                                            //Creates the size of the program
  colorMode(HSB, 360, 100, 100, 100);                        //Sets the program to be run HSB as opposed to RGB
  portal = new CenterOfGravity(width/2-130, height + 50);    //Sets the CenterOfGravity point at the points (width/2-130, height + 50)
  rainbow = new Rainbow();                                   //rainbow declares a new Rainbow class
}


void draw() {
  background(185, 84, 90, 100);                              //Sets the background as light blue representing the "sky"

  fill(126, 89, 64, 100);                                    //Sets the fill to a green hue which is used to represent the ground/grass  
  rect(0, 550, 800, 50);                                     //Creates the ground/grass

  if (frameCount % 80 == 0) {                                //Sets it so that every certain frame something happens (used as a timer(
    fluff.add(new Cloud());                                  //Every certain frame the arraylife fluff creates a new Cloud
  }
  for (int i = fluff.size () - 1; i >= 0; i--) {             //this for loop  creates the clouds with ids as i
    Cloud c = fluff.get(i);                                  // c will now get a "i" cloud
    c.display();                                             // The code runs the process c.display   (Which can be seen in the Class Cloud tab)
    c.move();                                                // The code runs the process c.move      (Which can be seen in the Class Cloud tab)
    if (c.isGone()) {                                        // If cloud "isGone"
      fluff.remove(i);                                       // remove that cloud
    }
  }

  bling.add(new Coin(random(5, 30), random(.1, 5)));         //Add a coin to the array with those given criteria
  for (int i = 0; i < bling.size (); i++) {                  //this for loop creates the coins with the ids of i
    Coin b = bling.get(i);                                   // b will now get a "i" coin 
    b.display();                                             // The code runs the process b.display          (Which can be seen in the Class Coin tab)
    b.move();                                                // The code runs the process b.move             (Which can be seen in the Class Coin tab)
    b.pull(portal);                                          // The code runs the process b.pull and sets it to portal wish is a CenterOfGravity point          (Which can be seen in the Class Coin tab)
    if (b.isGone()) {                                        // If coin "isGone"
      bling.remove(i);                                       // remove that coin
    }
  }

  goldpot = loadImage("goldpot.png");                        //Loads up the image of the goldpot
  image(goldpot, width/2-200, height-130, 150, 150);         // Sets the image up in the loc.x(width/2-200) and loc.y(height-130) giving it 150 and 150 in sizes


  if (mousePressed == true) {                                //If the mouse is pressed
    rainbow.display();                                       //run the process rainbow.display        (Which can be seen in the Class Rainbow tab)
  } else {                                                   //When the mouse isn't pressed
    text("Click Mouse to see Rainbow Trail", 580, 575);      //Display the text in the function as a guide to the user
  }

  println("Clouds:");                                        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  println(fluff.size());                                     //  This Displays "Clouds" as well as the amount of clouds in the arraylist fluff as well as "Coins" the amount of coins in the bling   //
  println("Coins:");                                         //  arraylist in the text display prompt down below. This is used to see how the processes is running and was used for testing.         //
  println(bling.size());                                     //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

