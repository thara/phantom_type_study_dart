import "dart:async";

main () {
  var controller = new StreamController<int>();
  
  var stream = controller.stream.asBroadcastStream();
  
  stream
    .where((n) => n.isEven)
    .reduce((p, n) => p + n).then((n) {
      print("sum of even numbers : $n");
    });

  new List.generate(10, (i) => i * i).forEach(controller.add);
  
  stream.toList().then((List list){
    print(list.length);
  });
  
  new List.generate(10, (i) => i * i).forEach(controller.add);
  
  controller.close();
}