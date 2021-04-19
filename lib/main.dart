// import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/ui/authentication/registeration.dart';
import 'package:pet_care/ui/home/home_screen.dart';
import 'package:pet_care/ui/slpash_screen/splash_view.dart';
import 'package:pet_care/ui/veterinarian/specialists_screen.dart';
import 'package:pet_care/ui/veterinarian/veterinarian_screen.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => MyApp(),
//     ),
//   );
//   SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle(statusBarColor: Colors.transparent));
// }
void main() async {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Care',
      // locale: DevicePreview.locale(context), // Add the locale here
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
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
              fontSize: 16,
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
      home: HomeScreen(),
    );
  }
}
