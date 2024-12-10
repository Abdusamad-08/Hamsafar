import 'dart:convert';

import 'package:app_1sss/glavni_p.dart';
import 'package:app_1sss/loginPage2.dart';
import 'package:app_1sss/splash.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController _pasword = TextEditingController();
  TextEditingController _Phone = TextEditingController();

  Future<void> LoginPages() async {
    try {
      var resposte = await http.post(
        Uri.parse("https://testcrmapi.omuz.tj/api/Account/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": 'application/json',
        },
        body: jsonEncode(
          {
            "username": _Phone.text,
            "password": _pasword.text,
          },
        ),
      );
      if (jsonDecode(resposte.body)['statusCode'] == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage111()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${jsonDecode(resposte.body)['errors']}')));
      }
    } catch (e) {
      print(e);
    }
  }

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
              margin: EdgeInsets.only(top: 110),
              child: Column(
                children: [
                  Image.asset("images/Group 14 (1).png"),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Ворид шудан",
                    style: TextStyle(
                      color: Color.fromARGB(255, 188, 255, 210),
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _Phone,
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
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 15,
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
                        // errorText: _pasword.text.length <= 8
                        //     ? "ramz boyad az 8 raqam ziyd boshad"
                        //     : null,
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
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(0, 153, 51, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        fillColor: Color.fromARGB(255, 188, 255, 210),
                        filled: true),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                      backgroundColor: Color.fromRGBO(0, 186, 62, 1),
                    ),
                    onPressed: () {
                      LoginPages();
                    },
                    child: Text(
                      "Ворид",
                      style: TextStyle(
                        color: Color.fromARGB(255, 188, 255, 210),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Паролро фаромӯш кардед?",
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
                                "Аккаунт нест? ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 158, 201, 172),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Login_page2()));
                                  },
                                  child: Text(
                                    "Бақайдгирӣ",
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
