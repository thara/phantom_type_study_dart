import "dart:async";
import "dart:io";

main () {
  StreamSubscription<List<int>> subscription;
  subscription = new File('bar.txt').openRead().listen((bytes) {
    for (var b in bytes) {
      print(new String.fromCharCode(b));
      if (b == '#'.codeUnitAt(0)) {
        subscription.cancel();
        return;
      }
    }
  });
}