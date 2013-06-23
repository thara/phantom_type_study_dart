import "dart:io";

main () {
  print("Please Input A.");
  var stream = stdin
                .transform(new StringDecoder())
                .transform(new LineTransformer());
  stream.listen((str){
    print("Your input's length : ${str.length}");
    print(str == "A" ? "Just A." : "Not A.");
  });
}