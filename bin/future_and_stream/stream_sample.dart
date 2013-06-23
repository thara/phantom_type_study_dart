import "dart:async";

main () {
  var controller = new StreamController<String>();
  
  controller.add("A");
  
  var stream = controller.stream;
  stream.listen((str) => print(str),
      onError : (e) => print("Error"),
      onDone : () => print("Done"));
  
  controller.add("B");
  controller.add("C");
  controller.addError(new StateError("Illegal State"));
  controller.add("D");
  controller.close();
}