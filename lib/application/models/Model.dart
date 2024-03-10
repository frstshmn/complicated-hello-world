import 'package:complicated_hello_world/core/Storage/JSON.dart';

abstract class Model {
  late String _table;
  late Map columns;

  Model();

  void populate() {
    JSON json = JSON();
    Map results = json.getData();
    columns = results[_table][0];
  }

  void set(String key, Object value) {
    columns[key] = value;
  }

  set table(String table) {
    _table = table;
  }

  @override
  String toString() {
    return columns.toString();
  }

}