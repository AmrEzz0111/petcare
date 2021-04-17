import 'package:flutter/material.dart';

import 'appointments_booking_card.dart';

class AppointmentUpcomming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          BookingCard(),
        ],
      ),
    );
  }
}
