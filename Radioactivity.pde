float numDice = 10000;//antal terninger
int rolls = 0;
int numToRemove = 6; //tal der skal slås >= for at fjerne terningen
Die[] dice = new Die[floor(numDice)];
IntList living = new IntList();
void setup(){
  size(500,500);
  for(int i = 0; i < dice.length;i++){
    dice[i] = new Die(6);//antal sider på terningen
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
  for(int i = 0; i < living.size()-1; i++){
    line(i*5,400*(1.0-(living.get(i)/numDice)),(i+1)*5,400*(1.0-(living.get(i+1))/numDice));
  }
}

void mouseClicked(){
  if(100 < mouseX && mouseX < 400 && mouseY > 400 && mouseY < 500){
    for(int i = 0; i < dice.length; i++){
      if(numToRemove <= dice[i].roll()){
        dice[i].active = false;
      }
    }
    living.append(getLiving());
    print(living.get(living.size()-1) + ",");
    println(living.get(living.size()-2)-living.get(living.size()-1));
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
