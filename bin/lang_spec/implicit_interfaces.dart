
main () {
  
  var y = new Young();
  print(y.isAdult);
  
}

class Person {
  final bool isAdult;
  Person(int age) : this.isAdult = age < 20;
}

class Young implements Person {
  bool get isAdult => false;
}