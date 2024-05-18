import 'package:hive/hive.dart';

class TodoDatabase
{
  List exampleList = [];

  final _database = Hive.box('appData');

  void createInitialData(){
    exampleList = [
      ["Example Entry", false],
    ];  
  }

  void loadData()
  {
    exampleList = _database.get("EXAMPLE");
  }

  void updateDatabase()
  {
    _database.put("EXAMPLE", exampleList);
  }

}