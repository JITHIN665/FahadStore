import 'package:flutter/material.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(45),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    label: Text('Name'),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // border: OutlineInputBorder(),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                    hintText: 'Name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    label: Text('Mobile'),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // border: OutlineInputBorder(),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                    hintText: 'Enter Mobile Number'),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    label: Text('Email'),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // border: OutlineInputBorder(),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                    hintText: 'Enter Email Adress'),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ))),
                  onPressed: () {
                    print('clicked');
                  },
                  child: Text("Save Change"),
                ),
              )
            ],
          ),
        ),
      ));
}
