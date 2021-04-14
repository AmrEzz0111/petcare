import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_care/pet_services/grooming/grooming_screen.dart';
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
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GroomingScreen(),
    );
  }
}
