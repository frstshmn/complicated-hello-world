import 'package:complicated_hello_world/application/models/Model.dart';

class User extends Model {
  User() {
    table = "users";
  }

  String getFirstName() {
    return columns['first_name'];
  }

  String getLastName() {
    return columns['last_name'];
  }
}