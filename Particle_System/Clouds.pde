//  Creates the class Cloud which sets clouds to move across the screen  \\
class Cloud {
  PVector loc, vel, acc;    //  Sets the location, velocity, and the acceleration for the clouds
  float sz;                 //  Sets the size of the clouds
  float speed;              //  Is the overall speed of the clouds


  Cloud() {
    sz = 70;                              // Sets the size to 70
    vel = PVector.random2D();             // Sets velocity to a PVector (X and Y)
    loc = new PVector(-65, random(400));  // Sets the location to -65 X and a random y value up to 400
    acc = new PVector(.1, 0);             // Sets the X accel to .1 and the Y to 0 
    vel.setMag(speed);                    // Sets the speed to be the velocity of the clouds
  }
  void display() {
    fill(185, 0, 100, 100);                            // Gives the clouds its white colour
    
    ellipse(loc.x-30, loc.y+20, sz, sz);               ///////////////////////////////////////////////////////////////////////////////////
    ellipse(loc.x, loc.y, sz, sz);                     //    Importing an image of a cloud lagged up the program due to all of          //
    ellipse(loc.x+10, loc.y-30, sz, sz);               //     what was going in, so I manually made the clouds with these 4 ellipses    //
    ellipse(loc.x-50, loc.y-20, sz, sz);               ///////////////////////////////////////////////////////////////////////////////////
  }
  
  void move() {
    vel.add(acc);                              // makes accelleration change velocity
    vel.limit(1);                              // sets the limit to velocity to 1
    loc.add(vel);                              // makes velocity change location
  }
  
  boolean isGone() {                               //Gives the cloud "a death" 
    if (loc.x > 875) {                             //If the cloud loc.x is greater than 875 so Cloud is considered "dead"
      return true;                                 //it returns the statement as "isGone"
    } else {                                       //or if the loc.x is not greater than 875
      return false;                                //it returns false, so the Cloud != isGone
    }
  }
}

