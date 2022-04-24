import 'package:carousel_slider/carousel_slider.dart';
import 'package:fahadstore/screens/navbar.dart';
import 'package:fahadstore/screens/notification.dart';
import 'package:fahadstore/screens/profile.dart';
import 'package:fahadstore/screens/search.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int currentIndex = 0;
  final screens = [
    bodyWidget(),
    ScreenSearch(),
    ScreenNoti(),
    ScreenProfile()
    // Center(
    //   child: Text("Msg"),
    // ),
    // Center(
    //   child: Text("King"),
    // ),
    // Center(
    //   child: Text("James"),
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Nav(),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 35,
            currentIndex: currentIndex,
            onTap: (index) => setState(
              () => currentIndex = index,
            ),
            backgroundColor: Color.fromARGB(255, 2, 7, 108),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Person',
              ),
            ],
          ),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 2, 7, 108),
            elevation: 0,
            // leading: Icon(Icons.menu),
            title: Image.asset(
              "assets/images/full-logo.png",
              width: 180,
            ),
            actions: [
              Icon(Icons.shopping_cart),
              Padding(padding: EdgeInsets.only(right: 20))
            ],
          ),
          body: screens[currentIndex]),
    );
  }
}

class bodyWidget extends StatelessWidget {
  const bodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              height: 160.0,
              autoPlay: true,
            ),
            items: [
              "assets/images/Banner1_1.png",
              "assets/images/Banner4_1.webp",
              "assets/images/veh.jpg"
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      child: Image.asset(
                    i.toString(),
                    fit: BoxFit.fill,
                  ));
                },
              );
            }).toList(),
          ),
          // SizedBox(
          //   height: 10,
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 4,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Top Sellers',
                  style: TextStyle(color: Color.fromARGB(255, 2, 7, 108)),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 7, 108),
                      ),
                    ))
              ],
            ),
          ),

          CarouselSlider(
              items: [
                BuidColumnWithRow("1", "Choclate"),
                BuidColumnWithRow("2", "Personal Care"),
                BuidColumnWithRow("3", "Baby Care"),
                BuidColumnWithRow("4", "Grocery"),
                BuidColumnWithRow("5", "Home Care"),
              ],
              options: CarouselOptions(
                  height: 126,
                  autoPlay: true,
                  aspectRatio: 10 / 7,
                  viewportFraction: .28)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 4,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Best Sellers',
                  style: TextStyle(color: Color.fromARGB(255, 2, 7, 108)),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 7, 108),
                      ),
                    ))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BoxRow("1", 'Pampers', '400', "Baby Care"),
                BoxRow("2", "Chair", "500", "toys"),
                BoxRow("3", "No", "0", "Toys"),
                BoxRow("4", "Rice", "65", "Grocery"),
                BoxRow("5", "Oreo", "35", "Grocery"),
              ],
            ),
          ),

          Row(
            children: [
              Image.asset(
                "assets/images/Banner4_1.webp",
                width: 392,
                height: 120,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 4,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Trending Product',
                  style: TextStyle(color: Color.fromARGB(255, 2, 7, 108)),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 7, 108),
                      ),
                    ))
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BoxWithRow1('Pampers', '400', "Baby Care", '1'),
                BoxWithRow1('Pampers', '400', "Baby Care", '2'),
                BoxWithRow1('Pampers', '400', "Baby Care", '3'),
                BoxWithRow1('Pampers', '400', "Baby Care", '4'),
                BoxWithRow1('Pampers', '400', "Baby Care", '5'),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/Banner4_1.webp",
                width: 392,
                height: 120,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 4,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Best Offers',
                  style: TextStyle(color: Color.fromARGB(255, 2, 7, 108)),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 7, 108),
                      ),
                    ))
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BoxRow2('Pampers', '400', "Baby Care", '1'),
                BoxRow2('Pampers', '400', "Baby Care", '2'),
                BoxRow2('Pampers', '400', "Baby Care", '3'),
                BoxRow2('Pampers', '400', "Baby Care", '4'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Padding BoxRow2(String title, String price, String title1, String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 2)
                ]),
            width: 150,
            height: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.asset(
                  "assets/images/b$img.jpg",
                  fit: BoxFit.cover,
                ))),
        Positioned(
          bottom: 5,
          left: 5,
          child: SizedBox(
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '₹$price',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Text(
                  title1,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Padding BoxWithRow1(String title, String price, String title1, String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 2)
                ]),
            width: 150,
            height: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.asset(
                  "assets/images/b$img.jpg",
                  fit: BoxFit.cover,
                ))),
        Positioned(
          bottom: 5,
          left: 5,
          child: SizedBox(
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '₹$price',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Text(
                  title1,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Padding BoxRow(String img, String title, String price, String title1) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 2)
                ]),
            width: 150,
            height: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.asset(
                  "assets/images/b$img.jpg",
                  fit: BoxFit.cover,
                ))),
        Positioned(
          bottom: 5,
          left: 5,
          child: SizedBox(
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '₹$price',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Text(
                  title1,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Padding BuidColumnWithRow(String img, String title) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 3, color: Colors.grey.shade500)),
          height: 100,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/sl$img.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(title)
      ],
    ),
  );
}
