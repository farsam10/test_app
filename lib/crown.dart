import 'package:flutter/material.dart';

class CrownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          bottom: TabBar(
            
            indicator: BoxDecoration(
              color: Color(0xFF00843D),
              borderRadius: BorderRadius.circular(10),
            ),
            indicatorColor: Color(0xFF00843D),
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xFF00843D),
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Login',
              ),
              Tab(
                text: 'Investors',
              ),
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Regions',
              ),
              Tab(
                text: 'CSR',
              ),
            ],
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(25.0),
              child: Image.asset(
                'assets/images/crown.png',
                scale: 2,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Row(
                    children: [
                      Image.asset('assets/images/cans.jpg'),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Our Products",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF00843D),
                            ),
                          ),
                          Text(
                            "xxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 110,
                  thickness: 3,
                  endIndent: 70,
                  indent: 50,
                  color: Colors.grey[500],
                ),
                Container(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Sustainability",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF00843D),
                              ),
                            ),
                            Text(
                              "xxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Image.asset(
                          'assets/images/cans.jpg',
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 110,
                  thickness: 3,
                  endIndent: 70,
                  indent: 50,
                  color: Colors.grey[500],
                ),
                Container(
                  height: 150,
                  child: Row(
                    children: [
                      Image.asset('assets/images/cans.jpg'),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For Investments",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF00843D),
                            ),
                          ),
                          Text(
                            "xxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 110,
                  thickness: 3,
                  endIndent: 70,
                  indent: 50,
                  color: Colors.grey[500],
                ),
                Container(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Our Location",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF00843D),
                              ),
                            ),
                            Text(
                              "xxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Image.asset(
                          'assets/images/cans.jpg',
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 110,
                  indent: 50,
                  endIndent: 70,
                  color: Color.fromRGBO(158, 158, 158, 1),
                  thickness: 3,
                ),
                Container(
                  height: 150,
                  child: Row(
                    children: [
                      Image.asset('assets/images/cans.jpg'),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Meet the team",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF00843D),
                            ),
                          ),
                          Text(
                            "xxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxx",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
