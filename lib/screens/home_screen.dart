import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

class HomeScreen extends StatelessWidget {
  final _elevation = 20.0;

  @override
  Widget build(BuildContext context) {
    int selectedBarItem = 0;
    var deviceData = MediaQuery.of(context);
    final buttomNavigationBar = SizedBox(
      height: 80,
      child: BottomNavigationBar(
        onTap: (value) => selected = value,
        currentIndex: selected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time_sharp,
            ),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.bgMain,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              children: [
                Container(
                  height:
                      (deviceData.size.height - buttomNavigationBar.height) *
                          0.1,
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    style: TextStyle(
                      color: AppTheme.headLine1Color,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        size: 40.0,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Container(
                  height:
                      (deviceData.size.height - buttomNavigationBar.height) *
                          0.2,
                  child: Container(
                    width: deviceData.size.width * 0.8,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text.rich(
                        TextSpan(
                            text: 'What are you \nlooking for, ',
                            style: Theme.of(context).textTheme.headline1,
                            children: [
                              WidgetSpan(
                                alignment: PlaceholderAlignment.baseline,
                                baseline: TextBaseline.alphabetic,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 100),
                                  child: Text(
                                    'Leila?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        .copyWith(color: Colors.deepOrange),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: _elevation,
                              shadowColor: Colors.black26,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/grooming.png',
                                      scale: 0.8,
                                    ),
                                    AutoSizeText(
                                      'Grooming',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 75,
                          child: Container(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: _elevation,
                              shadowColor: Colors.black26,
                              child: Container(
                                padding: EdgeInsets.all(13),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/dog walking.png',
                                      scale: 0.8,
                                    ),
                                    AutoSizeText(
                                      'Dog Walking',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 75,
                          child: Container(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: _elevation,
                              shadowColor: Colors.black26,
                              child: Container(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/taxi.png',
                                      scale: 0.8,
                                    ),
                                    AutoSizeText(
                                      'Pet taxi',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 140,
                            width: 140,
                            child: Material(
                              borderRadius: BorderRadius.circular(70),
                              elevation: _elevation,
                              shadowColor: Colors.black26,
                              child: Container(
                                padding: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/vet.png',
                                      scale: 0.6,
                                    ),
                                    AutoSizeText(
                                      'Veterinary',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 75,
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: _elevation,
                              shadowColor: Colors.black26,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/date.png',
                                      scale: 0.8,
                                    ),
                                    AutoSizeText(
                                      'Pet date',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 75,
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: _elevation,
                              shadowColor: Colors.black26,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/adoption.png',
                                      scale: 0.8,
                                    ),
                                    AutoSizeText(
                                      'Adoption',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: _elevation,
                              shadowColor: Colors.black26,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/training.png',
                                      scale: 0.8,
                                    ),
                                    AutoSizeText(
                                      'Traning',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
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
        bottomNavigationBar: buttomNavigationBar,
      ),
    );
  }
}
