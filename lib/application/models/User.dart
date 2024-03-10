import 'package:complicated_hello_world/application/models/Model.dart';
import 'package:complicated_hello_world/application/models/mixins/DebuggerMixin.dart';

class User extends Model with DebuggerMixin {
  User([String? table = "users"]){
    this.table = table!;
    populate();

    debug(columns);
  }

  String getFirstName() {
    return columns['first_name'] ?? "No first name";
  }

  String getLastName() {
    return columns['last_name'] ?? "No last name";
  }
}