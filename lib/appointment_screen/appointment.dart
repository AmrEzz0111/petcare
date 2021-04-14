import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

class Appointment extends StatelessWidget {
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
            style: TextStyle(color: AppTheme.headLine1Color),
          ),
          backgroundColor: Colors.white,
          elevation: 20,
          shadowColor: Colors.black26,
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
              child: TabBar(
                indicatorColor: Colors.white,
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
    );
  }
}
