import '../../application/controllers/Controller.dart';

class Routes {
  static final Routes _routesInstance = Routes._internal();
  final Map<String, Controller> _routes = {};

  factory Routes() {
    return _routesInstance;
  }

  void addRoute(String route, Controller controller) {
    _routes.putIfAbsent(route, () => controller);
  }

  Controller? getControllerByRoute(String route) {
    if (!_routes.containsKey(route)) {
      return null;
    }
    return _routes[route];
  }

  Map<String, Controller> get routes {
    return _routes;
  }

  Routes._internal();
}