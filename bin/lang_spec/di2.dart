import "dart:async";

main () {
  new Service().execute();
  new AwesomeService().execute();
}

class Repository {
  Stream<String> find() => new Stream.fromIterable(["data1", "data2"]);  
}

class Service {
  Repository get repository => new Repository();
  execute() => repository.find().listen(print);
}

class AwesomeRepository implements Repository {
  Stream<String> find() => new Stream.fromIterable(["awesomeData1", "awesomeData2"]);  
}

abstract class AwesomeRepositoryModule {
  Repository get repository => new AwesomeRepository();
}

typedef AwesomeService = Service with AwesomeRepositoryModule;