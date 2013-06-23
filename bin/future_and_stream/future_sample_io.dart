import "dart:io";
import "dart:async";

main () {
  new File("../foo.txt").fullPath()
    .then((fullpath) {
      print("fullpath is $fullpath");
    })
    .catchError((e) {
      print("foo.txt is not exists.");
    });
}