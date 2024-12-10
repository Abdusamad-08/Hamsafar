import 'package:app_1sss/ramz.dart';
import 'package:app_1sss/sozdat.dart';
import 'package:app_1sss/splash.dart';
import 'package:flutter/material.dart';

class Login_page2 extends StatefulWidget {
  const Login_page2({super.key});

  @override
  State<Login_page2> createState() => _Login_page2State();
}

class _Login_page2State extends State<Login_page2> {
  TextEditingController _pasword = TextEditingController();
  TextEditingController _pasword1 = TextEditingController();
  bool sas = true;
  bool sas1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 153, 51, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Image.asset("images/Group 14 (1).png"),
                  Text(
                    "Бақайдгирӣ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 188, 255, 210),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Барои пурра истифода бурдани тамоми\n хусусиятҳои барномаи мо бояд сабти ном кунед",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color.fromARGB(255, 188, 255, 210),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
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
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
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
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Color.fromRGBO(0, 153, 51, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Рузи таваллуд",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(17, 213, 82, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Color.fromRGBO(0, 153, 51, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Рақами тел",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(17, 213, 82, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        prefixText: "+992  ",
                        prefixStyle: TextStyle(
                            color: Color.fromRGBO(0, 153, 51, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _pasword,
                    obscureText: sas1,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 153, 51, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        errorText: _pasword.text.length <= 8
                            ? "ramz boyad az 8 raqam ziyd boshad"
                            : null,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              sas1 = !sas1;
                            });
                          },
                          icon: Icon(
                            sas1 ? Icons.remove_red_eye : Icons.visibility_off,
                            color: Colors.green,
                          ),
                        ),
                        hintText: "Рамз",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(17, 213, 82, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _pasword1,
                    obscureText: sas,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 153, 51, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        errorText: _pasword1.text.length <= 8
                            ? "ramz boyad az 8 raqam ziyd boshad"
                            : null,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              sas = !sas;
                            });
                          },
                          icon: Icon(
                            sas ? Icons.remove_red_eye : Icons.visibility_off,
                            color: Colors.green,
                          ),
                        ),
                        hintText: "Рамзро такрор кунед",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(17, 213, 82, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                      backgroundColor: Color.fromRGBO(0, 186, 62, 1),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Ramz()));
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Аллакай ба қайд гирифта",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 188, 255, 210),
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "шудааст?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 158, 201, 172),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Ворид шавед ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 188, 255, 210),
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
