import 'package:app_1sss/bottom_navigation.dart';
import 'package:app_1sss/glavni_p.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class Ramz extends StatefulWidget {
  const Ramz({super.key});

  @override
  State<Ramz> createState() => _RamzState();
}

class _RamzState extends State<Ramz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 153, 51, 1),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 120),
          child: Column(
            children: [
              Image.asset("images/Group 14 (1).png"),
              SizedBox(
                height: 40,
              ),
              Text(
                "Рамзро ворид кунед",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Color.fromARGB(255, 158, 201, 172),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Мо рамзро ба",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 158, 201, 172),
                      ),
                    ),
                    Text(
                      " 007668916 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 243, 255, 247),
                      ),
                    ),
                    Text(
                      "фиристодем",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 158, 201, 172),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                child: Text(
                  "* * * *",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Color.fromARGB(255, 158, 201, 172),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  backgroundColor: Color.fromRGBO(0, 186, 62, 1),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Bottom_navigation_bar()));
                },
                child: Text(
                  "Ба қайд гирифтан",
                  style: TextStyle(
                    color: Color.fromARGB(255, 188, 255, 210),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
