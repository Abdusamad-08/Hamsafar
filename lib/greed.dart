import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          newMethod(),
          newMethod(),
          newMethod(),
          newMethod(),
          newMethod(),
          newMethod(),
        ],
      ),
    );
  }

  Container newMethod() {
    return Container(
      width: 170,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(0, 153, 51, 1),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/Group 54.png"),
                Container(
                  width: 1,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                              size: 10,
                            ),
                            Text(
                              "20.10.2024",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              color: Colors.white,
                              size: 10,
                            ),
                            Text(
                              "16:30",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Text(
                  "Мубориз Саидов",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Honda CR-V | 0605MH",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                ),
                Container(
                  width: 160,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Text(
                  "Душанбе - Хучанд",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 160,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.chair,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "- 6",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                      Container(
                        width: 1,
                        height: 10,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                      Icon(
                        Icons.account_balance_wallet_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "- 250c",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                      Container(
                        width: 1,
                        height: 10,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                      Icon(
                        Icons.edit_road_outlined,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "- 350",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Text(
                  "Брон кардан!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
