import 'package:app_1sss/splash3.dart';
import 'package:flutter/material.dart';

class HomePage111 extends StatefulWidget {
  const HomePage111({super.key});

  @override
  State<HomePage111> createState() => _HomePage111State();
}

class _HomePage111State extends State<HomePage111> {
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
            child: Image.asset("images/Group 1 (2).png"),
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Text(
            "Ҷустуҷӯи зуд ва \n сафар қулайи",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Барои сафарҳои муштарак одамони\n ҳамфикрро ебед!",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Барои сафарҳои муштарак!",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Одамони ҳамфикрро ебед!",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage222()));
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 72,
                vertical: 15,
              ),
            ),
            child: const Text(
              "Ба пеш",
              style: TextStyle(
                color: Color.fromRGBO(0, 153, 51, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 110,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color.fromARGB(255, 125, 125, 125),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
