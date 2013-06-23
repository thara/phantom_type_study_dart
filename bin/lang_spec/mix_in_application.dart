
main () {
  var me = new Person(17);
  me.printMe();
}

class Printable {
  void printMe() => print(this.toString());
}

class Person extends Object with Printable {
  final int age;
  Person(this.age);
  String toString() => "I'm $age years old.";
}