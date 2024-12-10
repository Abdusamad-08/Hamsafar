import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _passwor = TextEditingController();
  bool sas = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                maxLength: 10,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Surname",
                  labelStyle: TextStyle(color: Colors.green),
                  border: InputBorder.none,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passwor,
                obscureText: sas,
                decoration: InputDecoration(
                  errorText: _passwor.text.length <= 8 ? "ndwj 42 j 2j" : null,
                  // prefixIcon: Icon(Icons.remove_red_eye_outlined),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        sas = !sas;
                      });
                    },
                    icon:
                        Icon(sas ? Icons.remove_red_eye : Icons.visibility_off),
                  ),

                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.green),

                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _passwor.text = _passwor.text;
                    });
                  },
                  child: Text("Print Button")),
              Text("password ${_passwor.text}"),
            ],
          ),
        ),
      ),
    );
  }
}
