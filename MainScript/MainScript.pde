// Rectifier l'orientation des vecteurs... La ca part toujours a 
// la verticale

float G = 10;
float dt = 0.1;
float coeffVisual = 100;

int nbrGravitors;
ArrayList<Gravitor> system;

void setup(){
  size(600, 600);
  frameRate(30);
  
  nbrGravitors = 2;
  system = new ArrayList<Gravitor>();
  for(int i=0; i<nbrGravitors; i++){
    float x = random(width);
    float y = random(height);
    float m = random(random(1, 3), random(50, 100));
    float r = random(10, 50);
    Gravitor gravitor = new Gravitor(x, y, m, r);
    system.add(gravitor);
  }
}

void draw(){
  background(0);
  
  for(Gravitor gravitor : system){
    gravitor.update();
  }
  for(Gravitor gravitor : system){
    gravitor.display();
  }
}

//Will return the square of the distance
float dist(Gravitor g1, Gravitor g2){
  float distance;
  distance = pow((g1.old_xPos-g2.old_xPos), 2) + pow((g1.old_yPos-g2.old_yPos), 2);
  return distance;
}
