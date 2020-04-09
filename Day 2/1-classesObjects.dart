class Student{
  String name;
  int rollNo;
  int marks;
  String sec;

  void showStudentData(){
    print(name);
    print(rollNo);
    print(marks);
    print(sec);
  }

  Student({
    this.name,
    this.rollNo,
    this.marks,
    this.sec
  });
}

main(){
  Student stu1 = Student(name: "R P S Naik", rollNo: 23, marks: 79, sec: "10th Class");

  stu1.showStudentData();
}