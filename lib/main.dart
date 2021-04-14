import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_care/authentication/booking.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/pharmacies/pharmacy-Details-Screen.dart';
import 'package:pet_care/screens/home_screen.dart';
import 'package:pet_care/veterinarian/veterinarian_view.dart';

import 'authentication/auth_ways.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Care',
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark(),
      theme: Theme.of(context).copyWith(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppTheme.bgMain,
            selectedItemColor: AppTheme.appDark,
            unselectedItemColor: AppTheme.kUnselectedItemColor,
            unselectedIconTheme: IconThemeData(size: 30),
            selectedIconTheme: IconThemeData(size: 40),
            selectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
          ),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 33,
              color: AppTheme.headLine1Color,
              fontFamily: 'Co',
              fontWeight: FontWeight.w700,
            ),
            caption: TextStyle(
              fontSize: 12,
              color: AppTheme.headLine1Color,
            ),
          ),
          iconTheme: IconThemeData(
            color: AppTheme.appDark,
          )),
      home: PharmacyDetails(),
    );
  }
}
