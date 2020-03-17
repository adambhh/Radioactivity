int numDice = 1000;
int rolls = 0;
int numToRemove = 6;
Die[] dice = new Die[numDice];
IntList living = new IntList();
void setup(){
  size(500,500);
  for(int i = 0; i < dice.length;i++){
    dice[i] = new Die(6);
  }
  living.append(getLiving());
}

void draw(){
  background(200);
  fill(255);
  rect(100,400,300,100);
  textSize(40);
  fill(0);
  text("Roll",210,475);
}

void mouseClicked(){
  if(100 < mouseX && mouseX < 400 && mouseY > 400 && mouseY < 500){
    for(int i = 0; i < dice.length; i++){
      if(numToRemove <= dice[i].roll()){
        dice[i].active = false;
      }
    }
    living.append(getLiving());
  }
 }

int getLiving(){
  int count = 0;
  for(int i = 0; i < dice.length; i++){
    if(dice[i].active){
      count++;
    }
  }
  return count;
}
