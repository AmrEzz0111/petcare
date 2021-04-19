import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/profile/profile_view.dart';
import 'package:pet_care/screens/home_screen.dart';
import '../appointment_screen/appointment.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> _pages = [
    HomeScreen(),
    Appointments(),
    ProfileView(),
  ];
  int _selectedBarItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgMain,
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedBarItem = value;
            });
          },
          currentIndex: _selectedBarItem,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time_sharp,
              ),
              // activeIcon: Icon(Icons.access_time_sharp),
              label: 'Appointments',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: _pages[_selectedBarItem],
    );
  }
}
