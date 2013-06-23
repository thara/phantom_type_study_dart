
main() {
  
  var tokai = (new StringBuffer("[")..writeAll(["Aichi", "Gifu", "Mie"], ",")..write("]")).toString();
  print(tokai);
  
  var person = (new PersonBuilder()..name = "to_hara"..age = 13).build();
  print(person);
}

class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
}

class PersonBuilder {
  String name;
  int age;
  Person build() {
    return new Person(name, age);
  }
}