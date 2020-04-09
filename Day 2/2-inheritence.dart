class Student{
  String name;
  int rollNo;
  int marks;
  String sec;

  Student({
    this.name,
    this.rollNo,
    this.marks,
    this.sec
  });
}

class StudenetFun extends Student{
  void showStudentData(Student data){
    print(data.name);
    print(data.rollNo);
    print(data.marks);
    print(data.sec);
  }
}


main(){
  Student stu1 = Student(name: "R P S Naik", rollNo: 23, marks: 79, sec: "10th Class");
  StudenetFun studenetFun = StudenetFun();

  studenetFun.showStudentData(stu1);
}