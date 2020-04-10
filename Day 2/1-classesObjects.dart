class Student{
  String name;
  int rollNo;
  String sec;
  int marks;
  
  void addData(Student stu1){
    stu1.name = "R P S Naik";
    stu1.rollNo = 23;
    stu1.sec = "10th Standard";
    stu1.marks = 82;
  }
  
  void showData(Student stu1){
    print(stu1.name);
    print(stu1.rollNo);
    print(stu1.sec);
    print(stu1.marks);
  }
  
  
}

void main(){
  Student stu1 = Student();
  
  stu1.addData(stu1);
  
  stu1.showData(stu1);
}
