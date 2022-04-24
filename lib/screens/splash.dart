import 'package:fahadstore/screens/home.dart';
import 'package:fahadstore/screens/login.dart';
import 'package:fahadstore/screens/search.dart';
import 'package:fahadstore/screens/signup.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLoggin();
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 7, 108),
      body: Center(
        child: Image.asset(
          "assets/images/full-logo.png",
          width: 300,
          fit: BoxFit.fill,
        ),
        // child: Text(
        //   'FAHADBAZAR',
        //   style: TextStyle(color: Colors.yellow, fontSize: 30),
        // ),
      ),
    );
  }

  void gotoLoggin() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenLogin()));
    });
  }
}
