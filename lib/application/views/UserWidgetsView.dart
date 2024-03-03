import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  final String fullName;

  UserWidget({super.key, required this.fullName});

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
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                MaterialButton(
                    child: Text("Show Name"),
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
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(fullName)
            )
          ],
        ),
      );
    }
    return Container();
  }
}