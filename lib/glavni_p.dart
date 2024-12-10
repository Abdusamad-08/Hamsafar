import 'package:app_1sss/greed.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTask333 extends StatefulWidget {
  const HomeTask333({super.key});

  @override
  State<HomeTask333> createState() => _HomeTask333State();
}

class _HomeTask333State extends State<HomeTask333> {
  int _sasasa = 0;
  final List<String> images = [
    "images/Mask group.png",
    "images/Mask group.png",
    "images/Mask group.png",
    "images/Mask group.png",
    "images/Mask group.png",
  ];

  static bool ssss = false;
  bool grade_Are_liste = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                items: images
                    .map(
                      (e) => Container(
                        width: double.infinity,
                        child: Center(
                          child: Image.asset(e),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _sasasa = index;
                    });
                  },
                ),
              ),
            ),
            salomamrdk(),
            SizedBox(
              height: 10,
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
                  Icons.arrow_drop_down_outlined,
                  color: Color.fromRGBO(0, 153, 51, 1),
                  size: 35,
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
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 220, 220, 220)),
              child: DropdownMenu(
                inputDecorationTheme: InputDecorationTheme(
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                  border: InputBorder.none,
                ),
                trailingIcon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Color.fromRGBO(0, 153, 51, 1),
                  size: 35,
                ),
                width: double.infinity,
                hintText: ("  Ба кучо"),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ҳама хатсайрҳои ҷорӣ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 153, 51, 1),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                grade_Are_liste = false;
                              });
                            },
                            icon: Icon(
                              Icons.dashboard,
                              color: Color.fromRGBO(0, 153, 51, 1),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              grade_Are_liste = true;
                            });
                          },
                          icon: Icon(
                            Icons.view_list,
                            color: Color.fromRGBO(0, 153, 51, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(),
                child: grade_Are_liste
                    ? ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          taxistho(),
                          SizedBox(
                            height: 10,
                          ),
                          taxistho(),
                          SizedBox(
                            height: 10,
                          ),
                          taxistho(),
                          SizedBox(
                            height: 10,
                          ),
                          taxistho(),
                          SizedBox(
                            height: 10,
                          ),
                          taxistho(),
                        ],
                      )
                    : MyWidget()),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: 300,
              height: 1.5,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 153, 51, 1),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset("images/Vector.png"),
                        Text(
                          "Асоси",
                          style:
                              TextStyle(color: Color.fromRGBO(0, 153, 51, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 153, 51, 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset("images/Group 36.png"),
                        Text(
                          "Сохтан",
                          style:
                              TextStyle(color: Color.fromRGBO(0, 153, 51, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 153, 51, 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset("images/Group 21.png"),
                        Text(
                          "Сафарҳо",
                          style:
                              TextStyle(color: Color.fromRGBO(0, 153, 51, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 153, 51, 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 153, 51, 1),
                          ),
                          child: Image.asset("images/Vector (1).png"),
                        ),
                        Text(
                          "Асоси",
                          style:
                              TextStyle(color: Color.fromRGBO(0, 153, 51, 1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container taxistho() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 153, 51, 1),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("images/Group 54.png"),
          ),
          Container(
            width: 1,
            height: 52,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Muboriz \nSaidov",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Honda CR-V \n0605MH",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: 52,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.chair,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "- 6",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "- 250c",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_road_outlined,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "- 350",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: 52,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 7),
                              child: Text(
                                "20.10.2024",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2),
                              child: Icon(
                                Icons.access_time_filled,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                            Container(
                              child: Text(
                                "16:00",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          "Душанбе -Кулоб",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  child: Text(
                    'Брон кардан!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  salomamrdk() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < images.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            width: i == _sasasa ? 7 : 5,
            height: i == _sasasa ? 7 : 5,
            decoration: BoxDecoration(
              color: i == _sasasa ? Colors.black : Colors.grey,
              shape: BoxShape.circle,
            ),
          )
      ],
    );
  }
}
