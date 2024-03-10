import 'application/controllers/UserController.dart';
import 'core/Routes/Routes.dart';

Routes routesPopulator() {
  Routes routes = Routes();

  UserController userController = UserController();

  routes.addRoute("users", userController);

  return routes;
}