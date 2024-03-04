import 'package:complicated_hello_world/application/controllers/UserController.dart';
import 'package:flutter/material.dart';

void main() {
  String route = "users";

  if (route == "users") {
    runApp(UserController().init());
  }
}