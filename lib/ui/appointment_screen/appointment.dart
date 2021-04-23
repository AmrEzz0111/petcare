import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/widgets/app_appBar.dart';

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
        appBar: AppAppBar(
          title: 'Appointments',
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 45),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(50)),
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: AppTheme.headLine1Color,
                    unselectedLabelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    automaticIndicatorColorAdjustment: true,
                    indicator: BoxDecoration(
                      color: AppTheme.appDark,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepOrange.shade100,
                          // offset: Offset(0, -5),
                          blurRadius: 10.0,
                          spreadRadius: 1,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50),
                    ),
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
