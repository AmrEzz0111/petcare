import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_care/authentication/sign_in_screen.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/pet_services/grooming/grooming_screen.dart';
import 'package:pet_care/slpash_screen/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: SignIn(),
    );
  }
}
