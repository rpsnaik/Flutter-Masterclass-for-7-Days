void main(){
  int a = 10;
  int b = 0;
  
  int c;
  
  try{
    c = a~/b;
  }catch(e){
    print(e);
    print("You cannot perfrome that operation!");
  }
  print(c);
}
