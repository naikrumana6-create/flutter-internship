class Student //class
{
  String name;
  int age;
  int marks;
  Student(this.name, this.age, this.marks); // constructor 
  void  showDetails()
  {
    print("Name: $name");
    print("Age: $age");
    print("Marks: $marks");
  }
  void isPassed()
  {
    if(marks>=35)
    {
      print("Passed");
    }
    else
    {
      print("failed");
    }
  }
}
void main()
{
  Student s= Student("John",18,56);
  s.showDetails();
  s.isPassed();
}