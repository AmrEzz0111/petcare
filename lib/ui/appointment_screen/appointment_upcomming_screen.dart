import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

import 'appointment-btn.dart';
import 'appointments_booking_card.dart';

class AppointmentUpcomming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          BookingCard(),
          SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints.tightFor(width: double.infinity, height: 50),
            child: TextButton(
              onPressed: () => null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Make an appointment'),
                ],
              ),
              style: TextButton.styleFrom(
                  primary: AppTheme.appDark,
                  backgroundColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
