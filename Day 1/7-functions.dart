void myFun(){
  print("My Function just executed!");
}

void passingValuesInsideAFun(String name){
  print(name);
}

int gettingAReturnValFun(){
  print("Getting a return val!");
  return 45;
}

main(){
  myFun();
  passingValuesInsideAFun("R P S Naik");
  print(gettingAReturnValFun());
}