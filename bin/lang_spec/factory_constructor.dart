
main () {
  var hara = new Person(28);
  print("hara is Adult : ${hara is Adult}");  // true

  var inoue = new Person(17);
  print("inoue is Young: ${inoue is Young}"); // true
}

abstract class Person {
  final int age;
  Person._internal(this.age);
  factory Person(int age) => age < 20 ? new Young(age) : new Adult(age);
}

class Young extends Person { Young(int age) : super._internal(age); }
class Adult extends Person { Adult(int age) : super._internal(age); }