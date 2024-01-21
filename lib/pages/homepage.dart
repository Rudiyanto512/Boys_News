import 'package:news_boys/components/otomotive.dart';
import 'package:news_boys/components/profile.dart';
import 'package:news_boys/components/sports.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/news.otomotive.dart';

class Homepage extends StatelessWidget {
  var height, width;

  List imgData = [
    "assets/otomotive.png",
    "assets/sport.png",
    "assets/user.jpg",
  ];

  List titles = ["Otomotive", "Sport", "Profile"];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    // Pindahkan pemanggilan getTopNews ke luar Consumer
    Provider.of<NewsProvider>(context, listen: false).getTopNews();

    return Consumer<NewsProvider>(
      builder: (BuildContext context, news, Widget? child) {
        return Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: height * 0.25,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 35,
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.sort,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage("assets/profile.jpg"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                              left: 30,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Homepage",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Last Update: 20 Januari 2024",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white54,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blueGrey.shade900,
                      child: GridView.builder(
                        padding: EdgeInsets.all(16),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 2.2,
                          mainAxisSpacing: 25,
                        ),
                        shrinkWrap: true,
                        itemCount: imgData.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              if (titles[index] == "Otomotive") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => News(),
                                  ),
                                );
                              } else if (titles[index] == "Sport") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sport(),
                                  ),
                                );
                              } else if (titles[index] == "Profile") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfilePage(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    imgData[index],
                                    height: height * 0.23,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    titles[index],
                                    style: TextStyle(
                                      fontSize: 20, // Increased font size
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
