import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/ui/grooming/grooming_screen.dart';
import 'package:pet_care/ui/trainers/trainers_screen.dart';
import 'package:pet_care/ui/veterinarian/veterinarian_screen.dart';

class HomeScreen extends StatelessWidget {
  final UserModel user;
  final double _elevation = 5;

  const HomeScreen({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                height: deviceData.size.height * 0.05,
                child: TextField(
                  style: TextStyle(
                      color: AppTheme.headLine1Color,
                      fontSize: 16,
                      fontFamily: 'Co'),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                      color: AppTheme.appDark,
                    ),
                  ),
                ),
              ),
              Container(
                height: deviceData.size.height * 0.2,
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
                                  "",
                                  // user.name,
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
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GroomingScreen()),
                                      );
                                    },
                                    child: Image.asset(
                                      'assets/images/main_imgs/grooming.png',
                                      scale: 0.8,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Grooming',
                                    style: Theme.of(context).textTheme.caption,
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
                                    style: Theme.of(context).textTheme.caption,
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
                                    style: Theme.of(context).textTheme.caption,
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
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VeterinarianView()),
                                      );
                                    },
                                    child: Image.asset(
                                      'assets/images/main_imgs/vet.png',
                                      scale: 0.6,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Veterinary',
                                    style: Theme.of(context).textTheme.caption,
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
                                    style: Theme.of(context).textTheme.caption,
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
                                    style: Theme.of(context).textTheme.caption,
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
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TrainersScreen()),
                                      );
                                    },
                                    child: Image.asset(
                                      'assets/images/main_imgs/training.png',
                                      scale: 0.8,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Traning',
                                    style: Theme.of(context).textTheme.caption,
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
    );
  }
}
