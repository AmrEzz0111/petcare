import 'package:pet_care/widgets/custom_raised_btn.dart';
import 'package:flutter/material.dart';

class AppointmentBtn extends CustomRaisedButton {
  AppointmentBtn({
    @required String text,
    Color color,
    Color txtColor,
    double height = 5,
    VoidCallback onPressed,
    EdgeInsets padding = const EdgeInsets.all(8.0),
  })  : assert(text != null),
        super(
          height: height,
          child: Padding(
            padding: padding,
            child: Text(
              text,
              style: TextStyle(
                  color: txtColor,
                  fontSize: 18.0,
                  fontFamily: "Co",
                  fontWeight: FontWeight.bold),
            ),
          ),
          color: color,
          onPressed: onPressed,
          borderRadius: 25.0,
        );
}
