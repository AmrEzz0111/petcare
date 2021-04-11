import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pet_care/colors/style.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  @override
  _CalenderWidgetState createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  CalendarController _calendarController;
  DateTime headerDate;
  Map<DateTime, List<dynamic>> _events = {};

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
    headerDate = DateTime.now();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          events: _events,
          calendarController: _calendarController,
          builders: CalendarBuilders(
            dayBuilder: (context, date, events) {
              if (date.day % 2 == 0) {
                _events.addAll({
                  date: [""]
                });
              }
              return Container(
                alignment: Alignment.center,
                child: Text(
                  date.day.toString(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38),
                ),
              );
            },
            dowWeekdayBuilder: (context, weekday) => Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.black54))),
              child: Text(
                weekday,
                style: TextStyle(color: Colors.black54),
              ),
            ),
            todayDayBuilder: (context, date, events) {
              if (date.day % 2 == 0) {
                _events.addAll({
                  date: [""]
                });
              }

              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFc25e3c),
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: (Text(
                    date.day.toString(),
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              );
            },
          ),
          headerVisible: false,
          onVisibleDaysChanged: (_, __, ___) {
            setState(() {
              headerDate = _calendarController.focusedDay;
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _events.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                        label: Text('9:30'),
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
