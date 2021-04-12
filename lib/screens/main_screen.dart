import 'package:flutter/material.dart';

import '../colors/style.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        // backgroundColor: AppTheme.appSecondary,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        size: 40.0,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'What are you looking for, Lila ? ',
                    style: TextStyle(
                      color: Color(0xff0f0fff),
                      fontFamily: 'coRegular',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 420,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 115,
                            width: 115,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 75,
                          child: SizedBox(
                            height: 115,
                            width: 115,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 75,
                          child: SizedBox(
                            height: 115,
                            width: 115,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 140,
                            width: 140,
                            child: Material(
                              borderRadius: BorderRadius.circular(70),
                              elevation: 5,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 75,
                          child: SizedBox(
                            height: 115,
                            width: 115,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 75,
                          child: SizedBox(
                            height: 115,
                            width: 115,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 115,
                            width: 115,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            // backgroundColor: AppTheme.appSecondary,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.timer,
                  size: 30,
                ),
                label: 'Appointments',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}