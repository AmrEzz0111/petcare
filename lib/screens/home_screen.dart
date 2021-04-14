import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        backgroundColor: AppTheme.bgMain,
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
                  child: Text.rich(
                    TextSpan(
                        text: 'What are you looking for, ',
                        style: Theme.of(context).textTheme.headline1,
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 100),
                              child: Text(
                                'Leila ?',
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
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 420,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/grooming.png',
                                      scale: 0.8,
                                    ),
                                    Text(
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
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/dog walking.png',
                                      scale: 0.8,
                                    ),
                                    Text(
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
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Material(
                              borderRadius: BorderRadius.circular(57.5),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/taxi.png',
                                      scale: 0.8,
                                    ),
                                    Text(
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
                          child: SizedBox(
                            height: 140,
                            width: 140,
                            child: Material(
                              borderRadius: BorderRadius.circular(70),
                              elevation: 5,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/main_imgs/vet.png',
                                        scale: 0.6,
                                      ),
                                    ),
                                    Text(
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
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/date.png',
                                      scale: 0.8,
                                    ),
                                    Text(
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
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/adoption.png',
                                      scale: 0.8,
                                    ),
                                    Text(
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
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/main_imgs/training.png',
                                      scale: 0.8,
                                    ),
                                    Text(
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
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            currentIndex: 0,
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
        ),
      ),
    );
  }
}
