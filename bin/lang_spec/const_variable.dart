main () {
  var s1 = "ab";
  var s2 = "ab";
  var s3 = "a" + "b";

  print("s1 == s2 : ${s1 == s2}");  // true
  print("identical(s1, s2) : ${identical(s1, s2)}"); // true
  
  print("s1 == s3 : ${s1 == s3}");  // true
  print("identical(s1, s3) : ${identical(s1, s3)}"); // false
  
  var l1 = new Location("Aichi");
  var l2 = new Location("Aichi");

  print("l1 == l2 : ${l1 == l2}");  // true
  print("identical(l1, l2) : ${identical(l1, l2)}"); // false
  
  var l3 = const Location("Aichi");
  var l4 = const Location("Aichi");
  
  print("l3 == l4 : ${l3 == l4}");  // true
  print("identical(l3, l4) : ${identical(l3, l4)}"); // true

  print("l3.sayHello() == l4.sayHello() : ${l3.sayHello() == l4.sayHello()}");  // true
  print("identical(l3.sayHello(), l4.sayHello()) : ${identical(l3.sayHello(), l4.sayHello())}");  // true
  
  print("l3.sayHello == l4.sayHello : ${l3.sayHello == l4.sayHello}");  // false
  print("identical(l3.sayHello, l4.sayHello) : ${identical(l3.sayHello, l4.sayHello)}"); // false
}

class Location {
  final String name;
  const Location(this.name);
  int get hashCode => name.hashCode;
  bool operator== (other) => name == other.name;
  String sayHello() => "Hello, $name";
}