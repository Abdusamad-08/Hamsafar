import 'package:app_1sss/glavni_p.dart';
import 'package:app_1sss/profile_page.dart';
import 'package:app_1sss/sozdat.dart';
import 'package:app_1sss/trips_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottom_navigation_bar extends StatefulWidget {
  const Bottom_navigation_bar({super.key});

  @override
  State<Bottom_navigation_bar> createState() => _Bottom_navigation_barState();
}

class _Bottom_navigation_barState extends State<Bottom_navigation_bar> {
  static bool ssss = false;
  List<Widget> pages = [
    HomeTask333(),
    SozdatPage(),
    TripsPage(),
    ProfilePage(),
  ];

  int index = 0;
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ssss == false ? ThemeMode.light : ThemeMode.dark,
      home: Scaffold(
        drawer: Drawer(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(0, 153, 51, 1),
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90,
                ),
                child: Image.asset(
                  "images/Group 14 (1).png",
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: Container(
            margin: EdgeInsets.only(left: 5),
            child: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Color.fromRGBO(0, 153, 51, 1),
                    size: 40,
                  ),
                );
              },
            ),
          ),
          title: Container(
            width: 55,
            height: 55,
            child: Container(
              child: Image.asset(
                "images/Group 1 (2).png",
                color: Color.fromRGBO(0, 153, 51, 1),
              ),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          ssss = !ssss;
                        });
                      },
                      icon: ssss == false
                          ? Icon(Icons.light_mode_rounded)
                          : Icon(Icons.dark_mode_rounded)),
                  Container(
                    width: 60,
                    height: 40,
                    child: DropdownButton(
                      hint: Image.asset(
                        selectedValue == 1
                            ? "images/Mask group (1).png"
                            : selectedValue == 2
                                ? "images/image 5.png"
                                : selectedValue == 3
                                    ? "images/Mask group (2).png"
                                    : "images/Mask group (1).png",
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: Image.asset("images/Mask group (1).png"),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Image.asset("images/image 5.png"),
                        ),
                        DropdownMenuItem(
                          value: 3,
                          child: Image.asset("images/Mask group (2).png"),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as int?;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        body: pages[index],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromRGBO(0, 153, 51, 1),
          animationDuration: Duration(milliseconds: 500),
          onTap: (newindex) {
            setState(() {
              index = newindex;
            });
          },
          items: [
            Image.asset("images/Vector.png"),
            Image.asset("images/Group 36.png"),
            Image.asset("images/Group 21.png"),
            Image.asset(
              "images/Vector (1).png",
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
