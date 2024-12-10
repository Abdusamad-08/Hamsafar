import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool s1 = false;
  bool s2 = false;
  bool s3 = false;
  bool s4 = false;
  bool s5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset("images/Group 17.png"),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Джейсон Стэтхэм",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromRGBO(0, 153, 53, 1),
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Text(
                                  "Марка:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "McLaren P1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color.fromRGBO(0, 153, 53, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Text(
                                  "Тел:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "00 000 00 00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color.fromRGBO(0, 153, 53, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        s1 = !s1;
                                      });
                                    },
                                    icon: s1 == false
                                        ? Icon(Icons.star_border)
                                        : Icon(
                                            Icons.star,
                                            color: Colors.green,
                                          )),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (s1 == true) {
                                          s2 = !s2;
                                        }
                                      });
                                    },
                                    icon: s2 == false
                                        ? Icon(Icons.star_border)
                                        : Icon(
                                            Icons.star,
                                            color: Colors.green,
                                          )),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (s2 == true) {
                                          s3 = !s3;
                                        }
                                      });
                                    },
                                    icon: s3 == false
                                        ? Icon(Icons.star_border)
                                        : Icon(
                                            Icons.star,
                                            color: Colors.green,
                                          )),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (s3 == true) {
                                          s4 = !s4;
                                        }
                                      });
                                    },
                                    icon: s4 == false
                                        ? Icon(Icons.star_border)
                                        : Icon(
                                            Icons.star,
                                            color: Colors.green,
                                          )),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (s4 == true) {
                                          s5 = !s5;
                                        }
                                      });
                                    },
                                    icon: s5 == false
                                        ? Icon(Icons.star_border)
                                        : Icon(
                                            Icons.star,
                                            color: Colors.green,
                                          )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Ном",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(17, 213, 82, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Насаб",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(17, 213, 82, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: Color.fromRGBO(0, 153, 53, 1),
                        size: 30,
                      ),
                      hintText: "Рузи таваллуд",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(17, 213, 82, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email_rounded,
                        color: Color.fromRGBO(0, 153, 53, 1),
                        size: 30,
                      ),
                      hintText: "Mail",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(17, 213, 82, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownMenu(
                  inputDecorationTheme: InputDecorationTheme(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.green)),
                  hintText: "  Марка ",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontSize: 20,
                  ),
                  width: double.infinity,
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 1, label: "  Mersedes"),
                    DropdownMenuEntry(value: 1, label: "  BMW"),
                    DropdownMenuEntry(value: 1, label: "  Opel"),
                    DropdownMenuEntry(value: 1, label: "  orshe"),
                    DropdownMenuEntry(value: 1, label: "  Hunday"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownMenu(
                  inputDecorationTheme: InputDecorationTheme(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.green)),
                  hintText: "  Ҷинс",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontSize: 20,
                  ),
                  width: double.infinity,
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 1, label: "  Зан"),
                    DropdownMenuEntry(value: 1, label: "  Мард"),
                    DropdownMenuEntry(value: 1, label: "  Дигар"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
