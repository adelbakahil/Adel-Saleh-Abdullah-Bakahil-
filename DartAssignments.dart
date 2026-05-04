import 'dart:math' as math_lib;
import 'dart:io' show stdout, stdin;
import 'dart:math';
import 'dart:isolate';

// Assignment 1
void assignment1() {

  //Task 1
  late String userProfile;
  // لأن القيمة تسند لاحقا في الكود late نستخدم
  userProfile = 'userProfile : Adel Alnahdi';
  print(userProfile);

  //Task 2 & Task 3
  const String appVersion = '1.0.0';
  print('App Version : '+appVersion);
  final loginTime = DateTime.now();
  print('login Time : $loginTime');
  //DateTime.now() يقبل نتيجة دالة مثل final
  //compile time يرفض ذلك لأن قيمته يجب أن تكون معروفة أثناء const
}

//===================================================
// Assignment 2
assignment2() {

  //Task 1
  double total = 10 + 20 + 30;

  if (total > 100) {
    total += total * 0.15;
  } else {
    total += 5;
  }
  print('Total : $total');

  //Task 2
  int age = 20;
  bool active = true;
  bool isAdmin = false;

  bool access = (age > 18 && active) || isAdmin;
  print('Access : $access');

  //Tsak 3
  int number = 45;

  bool isEven = number % 2 == 0;
  bool divisibleBy7 = number % 7 == 0;

  if (isEven && divisibleBy7) {
    print("The number is even and divisible by 7");
  } else {
    print("The condition is not satisfied");
  }

 //Task 4
 print("Enter first string :");
 String First_str = stdin.readLineSync()!;

 print("Enter second string:");
 String Second_str = stdin.readLineSync()!;
 if (First_str.toLowerCase() == Second_str.toLowerCase()) {
  print("Strings are equal");
  }else {
    print("Strings are not equal");
  }
}

//===================================================

// Assignment 3
/// Calculates the Euclidean distance between two 2D points.

double calculateEuclideanDistance({required double x1,required double y1,required double x2,required double y2}) {
  return math_lib.sqrt(math_lib.pow(x2 - x1, 2) + math_lib.pow(y2 - y1, 2));
}

@Deprecated("Use calculateEuclideanDistance() for better readability and structure")
double calculateDistanceOld(double x1,double y1,double x2,double y2) {
  return math_lib.sqrt(math_lib.pow(x2 - x1, 2) + math_lib.pow(y2 - y1, 2));
}

void useOldFunction() {
  double result = calculateDistanceOld(1, 2, 4, 6);
  stdout.writeln("Old distance: $result");
}

void Displaydistance() {

  double distance = calculateEuclideanDistance(x1: 1,y1: 2,x2: 4,y2: 6);
  print("New distance: $distance");

  useOldFunction();
}

//===================================================
// Assignment 4
void assignment4() {
  double temp = 22.5;
  int passengers = 10;
  String address = "Country";
  bool darkMode = false;

  print("$temp $passengers $address $darkMode");
}

//===================================================
// Assignment 5
void assignment5() {

  //Task 1
  List<String> Students = ["Ali", "Omar"];
  Students.add("Sara");
  Students.removeAt(0);
  Students.sort();
  print(Students);

  //Task 2
  Map<String, int> record = {"Math": 90, "Eng": 80};
  print(record.keys.toList());

  //Task 3
  (bool, String, int) checkOperation() {

  bool status = false;
  String errorMessage = "Invalid operation";
  int errorCode = 404;

  return (status, errorMessage, errorCode);
}

  var result = checkOperation();

  print("Status: ${result.$1}");
  print("Error Message: ${result.$2}");
  print("Error Code: ${result.$3}");


}

//===================================================
// Assignment 6

//Task 1
typedef Handler = void Function(Map<String, dynamic>);

//Task 2
class Storage<T> {
  List<T> items = [];
  void add(T item) => items.add(item);
  T getItem(int i) {
    return items[i];
  }
}

//===================================================
// Assignment 7
void assignment7() {

  //Task 1
  var location = ("Hadrmout", 39.1925, 21.4858);
  var (city, longitude, latitude) = location;
  print(city);
  print(longitude);
  print(latitude);

  //Task 2
  List<int> numbers = [100, 200, 300, 400, 500];
  var [first, ..., last] = numbers;
  print("First: $first");
  print("Last: $last");

  //Task 3
   Map<String, dynamic> response = {
    "status": "success",
    "data": "User created"
  };

  switch (response) {

    case {"status": "success", "data": var data}:
      print("Success: $data");
      break;

    case {"status": "failure"}:
      print("Error occurred");
      break;

    default:
      print("Unknown response");

  }

  //Pattern Applications
  //Task 1
  var object = [0, 9];

  if (object case [0, _]) {
    print("Valid list with first element 0");
  } else {
    print("Condition not satisfied");
  }

}

//===================================================
// Assignment 8

//Task 1
double bmi(double w, double h){
  return w / (h * h);
}

//Task 2
void displayName(String name, [String? title]) {

  if (title != null) {
    print("$title $name");
  } else {
    print(name);
  }

}

//Task 3
void registerUser({
  required String username,
  required String email,
  int age = 18
}) {

  print("Username: $username");
  print("Email: $email");
  print("Age: $age");

}

//Task 4
int counter = 0;

void increaseCounter() {
  counter++;
}

//Short Functions (Arrow Functions)
//Task 1
bool isPositive(int number) => number > 0;

//===================================================
// Assignment 9

//Task 1
void evaluateEmployee(int hoursWorked) {

  if (hoursWorked >= 50) {
    print("Excellent performance");
  } 
  else if (hoursWorked >= 40) {
    print("Good performance");
  } 
  else if (hoursWorked >= 30) {
    print("Average performance");
  } 
  else {
    print("Needs improvement");
  }

}


//Task 2
void processFile(String fileType) {

  switch (fileType) {

    case 'pdf':
      print('Opening PDF reader');
      break;

    case 'png':
      print('Opening image viewer');
      break;

    case 'docx':
      print('Opening Word processor');
      break;

    default:
      print('Unknown file type');
  }

}

//Task 3
enum OrderState { pending, shipped, delivered }


//Loops
//Task 1
void Loops() {

  List<double> prices = [100, 200, 300];

  for (var price in prices) {

    double finalPrice = price * 1.15;

    print(finalPrice);

  }
}

//Task 2
void FirstLoop() {

  int secretNumber = 5;
  int randomNumber = 0;

  while (randomNumber != secretNumber) {

    randomNumber = Random().nextInt(10);

    print("Generated: $randomNumber");

  }

  print("Secret number matched!");

}

//Task 3
void SecondLoop() {

  String password;

  do {

    print("Enter password:");
    password = stdin.readLineSync()!;

  } while (password.length <= 8);

  print("Password accepted");

}

//===================================================
// Assignment 10
void assignment10() {

  //Task 1
  String? nullableName = null;

  print(nullableName);

  String nonNullableName = "Adel Bakahil";
  // nonNullableName = null; 
  // This will cause a compile-time error
  //null يسمح بالقيمة String?
  // العادي لا يسمح بذلك string

//Task 2
  List<int>? numbers;

  List<int> finalList = [
    1,
    2,
    ...?numbers
  ];
  print(finalList);

print('');
print('Null-Specific Operators:');
//Null-Specific Operators
//Task 1
  String? username;

  String displayName = username ?? "Guest";

  print(displayName);

//Task 2

  String? message;

  int? length = message?.length;

  print(length);


//Task 3
  String? name = "Adel";

  int Length = name!.length;

  print(Length);
}

//===================================================
// Assignment 11
class Car {
  final String brand;
  String model;
  static const wheels = 4;

  Car(this.brand, this.model);
}

//===================================================
// Assignment 12

//Task 1
class Employee {

  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }

}

class Manager extends Employee {

  int teamSize;

  Manager(String name, double salary, this.teamSize)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Team size: $teamSize");
  }

}

// Assignment 12 Encapsulation, Setters/Getters, Mixins
mixin EmailNotification {
  void sendNotification(String message) {
    print("Notification sent: $message");
  }
}

class BankAccount with EmailNotification {

  double _balance = 0;

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Error Balance cannot be negative");
    }
  }

}

//===================================================
// Assignment 13
enum UserRole { Admin, User, Guest }

class User {

  void getPermissions() {
    print("Basic permissions");
  }

}

class Admin extends User {

  @override
  void getPermissions() {
    print("Admin permissions");
  }

}

class Guest extends User {

  @override
  void getPermissions() {
    print("Guest permissions");
  }

}

class Validator {

  bool call(String input) {
    return input.isNotEmpty;
  }

}

//===================================================
// Assignment 14
class Printer {

  void printDocument() {
    print("Printing document...");
  }

}

//===================================================
// Assignment 15
double divideNumbers(double a, double b) {

  try {

    if (b == 0) {
      throw Exception("Cannot divide by zero");
    }

    return a / b;

  } catch (e) {

    print("Error: $e");
    return 0;

  } finally {

    print("Operation attempted");

  }

}

//===================================================
// Assignment 16
extension ListSumExtension on List<int> {

  int sumAll() {
    int sum = 0;
    for (var number in this) {
      sum += number;
    }
    return sum;
  }

  String toDescription() {
    return "This list contains ${this.length} elements";
  }

}

//===================================================
// Assignment 17
sealed class Shape {

  double area();

}

class Circle extends Shape {

  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

}

class Square extends Shape {

  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }

}

//===================================================
// Assignment 18
Future<String> fetchUserData() async {

  await Future.delayed(Duration(seconds: 3));

  return "User data loaded";

}

//===================================================
// Assignment 19
int fibonacci(int n) {

  if (n <= 1) return n;

  return fibonacci(n - 1) + fibonacci(n - 2);

}

Future<void> main() async {

  print('');
  print('Assignment 1');
  assignment1();
  print('------------------------');
  print('Assignment 2');
  assignment2();
  print('------------------------');
  print('Assignment 3');
  Displaydistance();
  print('------------------------');
  print('Assignment 4');
  assignment4();
  print('------------------------');
  print('Assignment 5');
  assignment5();
  print('------------------------');
  print('Assignment 6');
  Storage<String> stringStorage = Storage();
  stringStorage.add("Apple");
  stringStorage.add("Banana");
  print(stringStorage.getItem(0));
  print('------------------------');
  print('Assignment 7');
  assignment7();
  print('------------------------');
  print('Assignment 8');
  double result = bmi(70, 1.75);
  print("BMI: $result");
  displayName("Mohanad", "Mr");
  registerUser(username:'Adel',email : 'Adelbakahil@gamil.com', age : 22);
  print(counter);
  increaseCounter();
  print(counter);
  print(isPositive(5));
  print('------------------------');
  print('Assignment 9');
  evaluateEmployee(45);
  processFile('png');
  OrderState state = OrderState.pending;
  String message = switch (state) {
    OrderState.pending => "قيد الانتظار",
    OrderState.shipped => "تم الشحن",
    OrderState.delivered => "تم التسليم"
  };
  print(message);
  print('');
  print('Loops:');
  Loops();
  FirstLoop();
  SecondLoop();
  print('------------------------');
  print('Assignment 10');
  assignment10();
  print('------------------------');
  print('Assignment 11');
  Car car1 = Car("Toyota", "Camry");
  print(car1.brand);
  print(car1.model);
  print(Car.wheels);
  print('------------------------');
  print('Assignment 12');
  Manager manager = Manager("Adel", 80000, 8);
  manager.displayInfo();
  print('');
  print('Encapsulation, Setters/Getters, Mixins');
  BankAccount account = BankAccount();
  account.balance = 10000;
  print(account.balance);
  account.sendNotification("Balance updated");
  print('------------------------');
  print('Assignment 13');
   var users = [Admin(), User(), Guest()];
  for (var user in users) {
    user.getPermissions();
  }
  Validator validator = Validator();
  print(validator("Hello"));
  print('------------------------');
  print('Assignment 14');
  Printer().printDocument();
  print('------------------------');
  print('Assignment 15');
  print(divideNumbers(10, 2));
  print('------------------------');
  print('Assignment 16');
  List<int> numbers = [1,2,3,4];
  print(numbers.sumAll());
  print(numbers.toDescription());
  print('------------------------');
  print('Assignment 17');
  Shape shape1 = Circle(5);
  Shape shape2 = Square(4);
  print(shape1.area());
  print(shape2.area());
  print('------------------------');
  print('Assignment 18');
  print("Fetching data...");
  String data = await fetchUserData();
  print(data);
  print('------------------------');
  print('Assignment 19');
  print("Starting heavy computation...");
  int Result = await Isolate.run(() => fibonacci(40));
  print("Fibonacci result: $result");
  
}

// Thank You For Nomow Soft Company For Helep us 
// Preparation By : Adel Saleh Abdullah Bakahil 
// Department : IT , Level : 3 , Path : Software