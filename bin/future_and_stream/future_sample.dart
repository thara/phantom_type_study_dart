import "dart:async";

Future<String> echoToMountain(String yo_ho) {
  var completer = new Completer<String>();
  
  new Timer(new Duration(milliseconds: 4000), () {
    completer.complete(yo_ho);
  });
  
  return completer.future;
}

void main() {
  print("before echoToMountain");
  
  var future = echoToMountain("YooooHooooo");
  future.then(print);
  
  print("after echoToMountain");
}
