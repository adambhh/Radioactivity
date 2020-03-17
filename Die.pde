class Die {
  int sides;
  boolean active;
  Die(int mySides) {
    active = true;
    sides = mySides;
  }
  
  int roll(){
  return ceil(random(sides));
  }
}
