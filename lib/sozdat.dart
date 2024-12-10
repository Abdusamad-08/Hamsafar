import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class SozdatPage extends StatefulWidget {
  const SozdatPage({super.key});

  @override
  State<SozdatPage> createState() => _SozdatPageState();
}

class _SozdatPageState extends State<SozdatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(0, 153, 51, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ронанда",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    Text(
                      "Муштари",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 220, 220, 220)),
                child: DropdownMenu(
                  inputDecorationTheme: InputDecorationTheme(
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                    border: InputBorder.none,
                  ),
                  trailingIcon: Icon(
                    Icons.add_location_rounded,
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                  width: double.infinity,
                  hintText: ("  Аз кучо"),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontSize: 20,
                  ),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 1, label: "  Ваҳдат"),
                    DropdownMenuEntry(value: 2, label: "  Душанбе"),
                    DropdownMenuEntry(value: 3, label: "  Хоруғ"),
                    DropdownMenuEntry(value: 4, label: "  Ҳисор"),
                    DropdownMenuEntry(value: 4, label: "  Кулоб"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 215, 215, 215),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownMenu(
                  inputDecorationTheme: InputDecorationTheme(
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                    border: InputBorder.none,
                  ),
                  trailingIcon: Icon(
                    Icons.add_location_rounded,
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                  width: double.infinity,
                  menuStyle: MenuStyle(),
                  hintText: "  Ба кучо",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 153, 51, 1),
                    fontSize: 20,
                  ),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 1, label: "  Ваҳдат"),
                    DropdownMenuEntry(value: 2, label: "  Душанбе"),
                    DropdownMenuEntry(value: 3, label: "  Хоруғ"),
                    DropdownMenuEntry(value: 4, label: "  Ҳисор"),
                    DropdownMenuEntry(value: 4, label: "  Кулоб"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.access_time,
                      color: Color.fromRGBO(0, 153, 51, 1),
                    ),
                    hintText: "Руз, Вақт",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 153, 51, 0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(0, 152, 51, 1),
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixText: "Мест",
                    hintText: "5",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 153, 51, 0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixText: "KM",
                    hintText: "300",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 153, 51, 0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixText: "Сомони",
                    hintText: "600",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 153, 51, 0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(0, 153, 51, 1),
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixText: "Бор (сумка)",
                    hintText: "2",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 153, 51, 0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                  backgroundColor: Color.fromRGBO(0, 186, 62, 1),
                ),
                onPressed: () {},
                child: Text(
                  "Сохтан",
                  style: TextStyle(
                    color: Color.fromRGBO(235, 240, 237, 1),
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
