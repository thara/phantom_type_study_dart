
main () {
  var hara = new Person("Hara");  
  var hara2 = new Person.copy(hara);
  print(hara2.name);
}

class Person {
  final String name;
  Person(this.name);
  Person.copy(Person original) : this.name = original.name;
}