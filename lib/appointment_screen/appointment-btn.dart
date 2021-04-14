import 'package:pet_care/widgets/custom_raised_btn.dart';
import 'package:flutter/material.dart';

class AppointmentBtn extends CustomRaisedButton {
  AppointmentBtn({
    @required String text,
    Color color,
    Color txtColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: Text(
            text,
            style: TextStyle(
                color: txtColor,
                fontSize: 20.0,
                fontFamily: "Co",
                fontWeight: FontWeight.bold),
          ),
          color: color,
          onPressed: onPressed,
          borderRadius: 25.0,
        );
}
