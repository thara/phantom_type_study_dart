import "dart:async";

main () {
  var controller = new StreamController<String>();
  
  controller.add("A");
  
  var stream = controller.stream;
  var subscription = stream.listen((str) => print(str),
      onDone : () => print("Done"));
  
  subscription.onError((e) {
    subscription.cancel();
  });
  
  controller.add("B");
  controller.add("C");
  controller.addError(new StateError("Illegal State"));
  controller.add("D");
  controller.close();
}