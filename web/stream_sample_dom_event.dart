import "dart:html";

main() {
  query("input#hello").onClick.listen((MouseEvent e) {
    window.alert("hello, world.");
  });
}