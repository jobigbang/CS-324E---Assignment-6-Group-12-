
ArrayList<Firework> firework;
PVector gravity;


void setup() {
  size(800,800);
  background(250);
  
  gravity = new PVector(0, 0.1);
  firework = new ArrayList<Firework>(); //empty

}

void draw() {
  background(0);
  
  if (random(1) < 0.1) {
    firework.add(new Firework());
  }
  for (int i = firework.size()-1; i >= 0; i--) {
    Firework f = firework.get(i);
    f.update();
    f.display();
  }
}
