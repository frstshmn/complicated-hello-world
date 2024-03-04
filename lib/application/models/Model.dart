import 'package:complicated_hello_world/core/Storage/JSON.dart';

abstract class Model {
  late String _tableName;
  late Map columns;

  Model() {
    JSON json = JSON();
    columns = json.getData()[table][0];
  }

  void set(String key, Object value) {
    columns[key] = value;
  }

  String toString() {
    return columns.toString();
  }

  void set table(String name) {
    _tableName = name;
  }

  String get table {
    return _tableName;
  }

}