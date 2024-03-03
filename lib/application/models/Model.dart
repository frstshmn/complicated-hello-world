import 'package:complicated_hello_world/core/Storage/JSON.dart';

abstract class Model {
  late String tableName;
  late Map columns;

  Model() {
    JSON json = JSON();
    columns = json.getData()['users'][0];
  }

  void set(String key, Object value) {
    columns[key] = value;
  }

  String toString() {
    return columns.toString();
  }

  void set table(String name) {
    tableName = name;
  }

}