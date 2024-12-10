import 'package:app_1sss/bottom_navigation.dart';
import 'package:app_1sss/glavni_p.dart';
import 'package:app_1sss/splash.dart';
import 'package:flutter/material.dart';

class HomePage222 extends StatefulWidget {
  const HomePage222({super.key});

  @override
  State<HomePage222> createState() => _HomePage222State();
}

class _HomePage222State extends State<HomePage222> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 125, 42, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          Container(
            padding: EdgeInsets.all(40),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(0, 153, 51, 1),
            ),
            child: Image.asset("images/Слой_x0020_1.png"),
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
          ),
          Text(
            "Ҷустуҷӯи зуд ва \n сафар қулайи",
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(
                      horizontal: 52,
                      vertical: 15,
                    )),
                child: const Text(
                  "Ба кафо",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Bottom_navigation_bar()),
                      (route) => false);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(
                      horizontal: 52,
                      vertical: 15,
                    )),
                child: const Text(
                  "Ба пеш",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 110,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color.fromARGB(255, 125, 125, 125),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
