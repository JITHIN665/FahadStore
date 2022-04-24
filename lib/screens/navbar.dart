import 'package:fahadstore/screens/about.dart';
import 'package:fahadstore/screens/contact_us.dart';
import 'package:fahadstore/screens/login.dart';
import 'package:fahadstore/screens/privacypolicy.dart';
import 'package:fahadstore/screens/returnpolicy.dart';
import 'package:fahadstore/screens/terms_cond.dart';
import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            color: Color.fromARGB(255, 2, 7, 108),
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('My Orders'),
            onTap: () {
              print('clicked');
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('My Address'),
            onTap: () {
              print('clicked');
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('My Pincode'),
            onTap: () {
              print('clicked');
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('LogOut'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenLogin()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Contact()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const About()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('Terms & Conditions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Terms()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('Privacy Policy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PriPolicy()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            iconColor: Color.fromARGB(255, 2, 7, 108),
            title: Text('Return Policy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RetPolicy()),
              );
            },
          ),
        ],
      ),
    );
  }
}
