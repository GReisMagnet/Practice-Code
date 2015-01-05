//  Creates the class CenterOfGravity which sets a gravity point  \\
class CenterOfGravity {
  PVector loc;              //Declares the location as a PVector  (X and Y) 
  
  CenterOfGravity(float loc1, float loc2) {   //Allows the floats loc1 (x) and loc2(y) be created outside of the class
    loc = new PVector(loc1, loc2);            //Sets the location of the point
  }  
}

