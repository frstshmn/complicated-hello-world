import 'package:complicated_hello_world/core/Storage/DataAccess.dart';
import 'package:complicated_hello_world/core/Storage/RetrieveMethod.dart';
import 'dart:convert';

class JSON extends RetrieveMethod implements DataAccess{
  String jsonString = "assets/database.json";
  Map result = {};

  JSON() {}

  Future<void> getJson(string) async {
    String data = '{"users": [{"id": "1","first_name": "Volodymyr","last_name": "Korenha"}]}';
    result = json.decode(data);
  }

  @override
  Map getData() {
    getJson(jsonString);
    return result;
  }

  @override
  DataAccess getMethod() {
    return JSON();
  }
}