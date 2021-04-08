import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_care/veterinarian/veterinarian_view.dart';

import 'on_boarding/on_boarding_slides.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
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
      home: VeterinarianView(),
    );
  }
}
