import 'package:app_1sss/greed.dart';
import 'package:flutter/material.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  bool grade_Are = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ҳама хатсайр",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(0, 153, 53, 1),
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_circle_down_rounded,
                            color: Color.fromRGBO(0, 153, 53, 1),
                            size: 35,
                          )),
                      Container(
                        height: 40,
                        width: 1,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 153, 53, 1),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Color.fromRGBO(0, 153, 53, 1),
                            size: 35,
                          )),
                    ],
                  ),
                )
              ],
            ),
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
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              grade_Are = false;
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
                            grade_Are = true;
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
          Container(
              width: double.infinity,
              height: 535,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: grade_Are
                  ? ListView.separated(
                      itemBuilder: (context, index) {
                        return taxistho();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: 10)
                  : MyWidget()),
        ],
      ),
    ));
  }
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
