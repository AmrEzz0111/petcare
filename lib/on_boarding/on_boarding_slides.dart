import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/screens/main_screen.dart';
import '../widgets/PageViewModel.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            IntroViewsFlutter(
              pages,
              onTapDoneButton: () {},
              showSkipButton: false,
              doneText: InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => MainScreen())),
                child: Text(
                  "Skip",
                ),
              ),
              pageButtonsColor: AppTheme.appDark,
              pageButtonTextStyles: TextStyle(
                fontSize: 16.0,
                fontFamily: "coRegular",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
