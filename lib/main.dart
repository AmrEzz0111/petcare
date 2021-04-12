import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/screens/main_screen.dart';
import 'package:pet_care/slpash_screen/splash_view.dart';

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
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 35,
              color: AppTheme.headLine1Color,
              fontFamily: 'Co',
              fontWeight: FontWeight.w700,
            ),
            caption: TextStyle(
              color: AppTheme.headLine1Color,
            ),
          ),
          iconTheme: IconThemeData(
            color: AppTheme.appDark,
          )),
      home: MainScreen(),
    );
  }
}
