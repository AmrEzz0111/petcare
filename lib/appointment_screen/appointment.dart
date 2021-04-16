import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

import 'appointment_past_screen.dart';
import 'appointment_upcomming_screen.dart';

class Appointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: AppTheme.bgMain,
        appBar: AppBar(
          title: Text(
            'Appointments',
            style: Theme.of(context).textTheme.headline2,
          ),
          backgroundColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(30),
              left: Radius.circular(30),
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: AppTheme.headLine1Color,
                  indicator: BoxDecoration(
                      color: AppTheme.appDark,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: AppTheme.appDark, offset: Offset.infinite),
                      ]),
                  tabs: [
                    Tab(
                      text: 'Upcomming',
                    ),
                    Tab(
                      text: 'Past',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            AppointmentUpcomming(),
            AppointmentPast(),
          ],
        ),
      ),
    );
  }
}
