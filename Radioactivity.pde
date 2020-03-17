int numDice = 1000;
int rolls = 0;
Die[] dice = new Die[numDice];
void setup(){
  for(int i = 0; i < dice.length;i++){
    dice[i] = new Die(6);
  }
}

void draw(){
  background(200);
}

void mouseClicked(){
  
}
