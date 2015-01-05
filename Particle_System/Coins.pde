//  Creates the class Coin which spews out coins from the pot  \\
class Coin {
  //  Declares the variables for the Class  \\
  PVector loc, vel, acc;    //  Sets the location, velocity, and the acceleration for the coins
  float sz;                 //  Sets the size of the coins
  float speed;              //  Is the overall speed of the coins
  float trans= 100;         //  Sets the transparency of the coin
  
 
  Coin(float tempsz, float tempspeed) {       // Putting float tempsz and tempspeed allows the coin to have both those variables initually set
    sz = tempsz;                              // Sets sz equal to tempsize
    speed = tempspeed;                        // Sets speed equal to tempspeed
    loc = new PVector(width/2-130, height-110);       //Makes the coins original location at that point
    vel = PVector.random2D();                         // Gives the coin a Pvector velocity (x and y direction)
    acc = new PVector(random(-.5, .5), random(-5, -6));   // Gives the coin a random acceleration in the x and y direction
    vel.setMag(speed);                                    // Sets the speed to be the velocity of the coin     
  }

  void display() {

    noStroke();                                // Gives the ellipses' no stroke [I AM USING A BIGGER ELLIPSE INSTEAD OF A STROKE FOR THE BORDER BECAUSE I BELIEVE IT IS EASIER TO EDIT - (you can just use a thicker stroke with a different colour if you need]
    fill(62, 99, 44, trans);                   // Colour of the border of the coin
    ellipse(loc.x, loc.y, sz+4, sz+4);         // Sets the border of the coin
    fill(70, 100, 100, trans);                 // Colour of the coin
    ellipse(loc.x, loc.y, sz, sz);             // Creates the coin itself
    trans -= .8;                               // Gives the transparency a negative tick to give it a "fading" effect
  }
  void move() {
    vel.add(acc);                              // makes accelleration change velocity
    loc.add(vel);                              // makes velocity change location
  }


  void pull(CenterOfGravity gravity) {             //Declares the CenterOfGravity class
    acc = PVector.sub(gravity.loc, loc);           //Gives it a PULL to a certain point as a Pvector (X and Y)
    acc.setMag(.07);                               //the set acceleration to the point
  }

  boolean isGone() {                               //Gives the coin "a death" 
    if (trans < 0) {                               //If the coin's transparency is less than 0 than its "dead"
      return true;                                 //returns the statement as "isGone"
    } else {                                       //or if the transparency is not less than zero
      return false;                                //it returns false, so the Coin != isGone
    }
  }
}

