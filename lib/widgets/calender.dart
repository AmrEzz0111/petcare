import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_care/colors/style.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  @override
  _CalenderWidgetState createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  CalendarController _calendarController;
  DateTime _headerDate;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
    _headerDate = DateTime.now();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                DateFormat.yMMMM().format(_headerDate),
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          TableCalendar(
            calendarController: _calendarController,
            headerVisible: false,
            onVisibleDaysChanged: (_, __, ___) {
              setState(() {
                _headerDate = _calendarController.focusedDay;
              });
            },
            weekendDays: [],
            calendarStyle: CalendarStyle(
              selectedColor: AppTheme.appDark,
              todayColor: AppTheme.appColor,
            ),
            initialCalendarFormat: CalendarFormat.week,
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              rightChevronPadding: EdgeInsets.fromLTRB(0, 0, 150, 0),
              centerHeaderTitle: false,
              leftChevronIcon: Icon(Icons.calendar_today_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
