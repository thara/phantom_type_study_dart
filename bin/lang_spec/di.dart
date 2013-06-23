
main () {
  new Service().execute();
  new AwesomeService().execute();
}

class Repository {
  List<String> find() => ["data1", "data2"];  
}

class Service {
  Repository get repository => new Repository();
  void execute() => print(repository.find());
}

class AwesomeRepository implements Repository {
  List<String> find() => ["awesomeData1", "awesomeData2"];  
}

abstract class AwesomeRepositoryModule {
  Repository get repository => new AwesomeRepository();
}

typedef AwesomeService = Service with AwesomeRepositoryModule;