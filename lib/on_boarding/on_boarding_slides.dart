import 'package:flutter/material.dart';
import '../widgets/PageViewModel.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import '../colors/AppTheme.dart';

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
              doneText: Text(
                "Skip",
              ),
              pageButtonsColor: AppTheme.bubbleBg,
              pageButtonTextStyles: new TextStyle(
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
