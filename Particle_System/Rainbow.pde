//   Creates the class Rainbow which gives the mouse press a trail  \\
class Rainbow {
  //  Declares the floats of all the Xs and Ys of the ellipses of the trail  \\
  float[] x = new float[50];
  float[] y = new float[50];
  //  Declares the variable hue that is used for the fill of the ellipeses  \\
  float hue;


  Rainbow() {
    //  Gives the ellipse no stroke while also "smoothing" it out to give it a less choppy look  \\
    noStroke();
    smooth();
  }
  
  
  void display() {
    //  This creates the rainbow colour loop for the fill command  \\
    hue += 1;
    if (hue == 360) {
      hue=0;
    }
    // Creates the forloop for the amount of variables \\
    for (int i = 0; i<x.length-1; i++) {
      //  This Shifts all values down 1 item in the array giving it the follow affect  \\
      x[i] = x[i+1];
      y[i] = y[i+1];

      //  Sets the ellipse of the array, and its visuals  \\ 
      fill(hue-i, 100, 100, 100);
      ellipse(x[i], y[i], i*2, i*2);
    }

    //     This sets the array to follow the mouse   \\
    x[x.length-1] = mouseX;
    y[y.length-1] = mouseY;
  }

}

