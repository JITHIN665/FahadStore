import 'package:fahadstore/screens/home.dart';
import 'package:fahadstore/screens/navbar.dart';
import 'package:flutter/material.dart';

class PriPolicy extends StatelessWidget {
  const PriPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Privacy Policy",
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'Returns is a scheme provided by respective sellers directly under this policy in terms of which the option of exchange, replacement and/ or refund is offered by the respective sellers to you. All products listed under a particular category may not have the same returns policy. For all products, the returns/replacement policy provided on the product page shall prevail over the general returns policy. Do refer the respective item'
              'sreplacement policy on the product page for any exceptions to this returns policy and the table below'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenHome()),
                );
              },
              child: Text('Back'))
        ],
      ),
    )));
  }
}
