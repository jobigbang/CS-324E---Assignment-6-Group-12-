class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  //float lifespan; //alpha value


  Particle(float x, float y, boolean firework) {
    location =  new PVector(x, y);
    if (firework) {
      velocity = new PVector(0, random(-12, -8));
    } else {
      velocity = PVector.random2D();//random direction
      velocity.mult(random(4, 8));
    }

    acceleration = new PVector(0, 0);
    //lifespan = 255.0;
  }


  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);

    acceleration.mult(0); //clear
  }

  void display() {
    stroke(255);
    strokeWeight(4);

    point(location.x, location.y);
  }
}
