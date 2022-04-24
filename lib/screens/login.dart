import 'package:fahadstore/screens/forgot_pass.dart';
import 'package:fahadstore/screens/home.dart';
import 'package:fahadstore/screens/signup.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 7, 108),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset(
                  'assets/images/full-logo.png',
                  width: 300,
                ),
                SizedBox(
                  height: 140,
                ),
                Text(
                  'Login To your Account',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      label: Text(
                        'Email/Number',
                        style: TextStyle(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      // border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: 'Enter Mail / Enter Number'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      // border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: '**************'),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenHome()),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Forgot()),
                      );
                    },
                    child: Text('Forgot Password')),
                SizedBox(
                  height: 160,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenReg()),
                      );
                    },
                    child: Text('Dont Have an Account'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
