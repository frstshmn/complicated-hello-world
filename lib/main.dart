import 'package:complicated_hello_world/application/controllers/UserController.dart';
import 'package:flutter/material.dart';

void main() {
  String route = "users";

  if (route == "users") {
    runApp(UserController().init());
  }
  // runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Volodymyr Korenha",
//             style: TextStyle(color: Colors.blue, fontSize: 20),
//           ),
//         ),
//       ),
//     );
//   }
// }