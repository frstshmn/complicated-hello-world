import 'package:complicated_hello_world/routes.dart';
import 'package:flutter/material.dart';
import 'core/Routes/Routes.dart';

List routesList = const [
  "users",
  "points",
  "transactions",
  "groups",
  "rates"
];

void main() {
  Routes routes = routesPopulator();

  String route = routesValidator("users");

  runApp(routes.getControllerByRoute(route)!.init());
}

String routesValidator(String route) {
  if(routesList.contains(route)) {
    return route;
  } else {
    return "404";
  }
}