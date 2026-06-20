//inheritance 
class Student
{
  String name;
  int roll;
  Student(this.name, this.roll);
  void details()
  {
    print("Name:$name");
    print("Roll:$roll");
  }
}
class Result extends Student
{
    int total;
    Result(this.total, String name, int roll): super(name, roll);
    void display()
    {
      print("Total:$total");
    }
}
//void main()
//{
  //Result r= Result(87, "Rohan", 23);
  //r.details();
  //r.display();
//}





// polymorphism
class Animal
{
  void sound()
  {
    print("some animal sound");
  }
}
class dog extends Animal
{
  @override
  void sound()
  {
    print("bark");
  }
}
class cat extends Animal
{
  @override
  void sound()
  {
    print("meow");
  }
}
//void main()
//{
  //Animal a = Animal();
  //a.sound();
  //Animal a1 =dog();
  //a1.sound();
  //Animal a2 = cat();    
  //a2.sound();
//}




//encapsulation - Encapsulation means hiding the internal data of a class from the outside world, and only 
//allowing access through specific methods. 
//In Dart, you hide things using _ (underscore) before the name

class Bank
{
  double _balance=1000.0;
  void deposit(double amount)
  {
    if(amount>0)
    {
      _balance +=amount;
      print("Deposited: $amount");
    }
    else
    {
      print("Invalid amount");
    }
    print("Balance : $_balance");
  }
}
//void main()
//{
  //Bank b = Bank();
  //b.deposit(500.0);
  
//}





// Abstract Classes — A template that can't be used directly

abstract class Worker {
  void work();       
  void getPayment(); 
}

class Carpenter extends Worker {
  @override
  void work() {
    print("Carpenter is making furniture");
  }
  @override
  void getPayment() {
    print("Carpenter got paid 500 rupees");
  }
}
class Plumber extends Worker {
  @override
  void work() {
    print("Plumber is fixing pipes");
  }
  @override
  void getPayment() {
    print("Plumber got paid 400 rupees");
  }
}
//void main() {
  //Carpenter c = Carpenter();
  //Plumber p = Plumber();

  //c.work();       
  //c.getPayment(); 
  //p.work();       
  //p.getPayment(); 
  
//}



// Async / Await-Async/Await is a way to handle tasks that take time without freezing your app. 
Future<String> fetch() async{
  await Future.delayed(Duration(seconds:3));
  return "data loaded successfully";
}
void main()async
{
   print("Fetching data...");
    String result = await fetch();
    print(result);
}