import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/profile/profile_view.dart';
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
              onTapDoneButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProfileView(),
                  ),
                );
              },
              showSkipButton: false,
              doneText: Text(
                "Skip",
              ),
              pageButtonsColor: AppTheme.appDark,
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
