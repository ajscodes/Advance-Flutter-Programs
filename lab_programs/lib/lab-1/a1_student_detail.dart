class Student{
  late String name;
  late int age;
  late String email;

  Student({required this.name,required this.age,required this.email});

  void displayDetails(){
    print('Student Details: ');
    print('Name: $name');
    print('Age: $age');
    print('Email: $email');
  }
}

void main(){
  Student ayush = Student(name: 'Ayush', age: 20 , email: 'ayush@gmail.com');

  ayush.displayDetails();
}
