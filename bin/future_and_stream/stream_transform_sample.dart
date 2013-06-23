import "dart:async";

main () {
  var controller = new StreamController<int>();
  var stream = controller.stream;
  
  var transformer = new StreamTransformer<int, String>(
        handleData : (int value, EventSink<String> sink) {
          sink.add("$value:(1)");
          sink.add("$value:(2)");
        },
        handleDone : (EventSink<String> sink) {
          sink.add("Done!");
        }
      );
  
  stream.transform(transformer).forEach(print);
  
  for (var i = 0; i < 10; i++) {
    controller.add(i);
  }
  
  controller.close();
}