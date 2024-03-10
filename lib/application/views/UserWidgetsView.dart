import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  final String fullName;

  UserWidget({super.key, required this.fullName}) : assert(fullName.isNotEmpty);

  @override
  _UserWidgetState createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  int _count = -1;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                MaterialButton(
                    child: const Text("Show Name"),
                    onPressed: () {
                      setState(() {
                        _count = 1;
                      });
                    }),
                createWidget(_count, widget.fullName),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createWidget(int count, String fullName) {
    if (count == 1) {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text(fullName)
            )
          ],
        ),
      );
    }
    return Container();
  }
}