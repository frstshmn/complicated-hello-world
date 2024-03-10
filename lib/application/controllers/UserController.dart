import 'package:complicated_hello_world/application/controllers/Controller.dart';
import 'package:flutter/cupertino.dart';
import '../models/User.dart';
import '../views/UserWidgetsView.dart';

class UserController extends Controller {
  @override
  StatefulWidget init() {
    User dao = User();

    fullName(String firstName, String lastName) => "$firstName $lastName";

    return UserWidget(fullName: fullName(dao.getFirstName(), dao.getLastName()));
  }
}