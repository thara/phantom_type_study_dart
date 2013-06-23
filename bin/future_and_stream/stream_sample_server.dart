import "dart:io";

main () {
  HttpServer.bind("127.0.0.1", 8080).then((HttpServer server) {
    server.listen((HttpRequest req) {
      req.response.write("This message from my server.");
      req.response.close();
    });
  });
}