import 'package:flutter/material.dart';

class ScreenNoti extends StatelessWidget {
  const ScreenNoti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
            child: Text(
          "Oops!",
          style: TextStyle(color: Colors.red, fontSize: 40),
        )),
      );
}
