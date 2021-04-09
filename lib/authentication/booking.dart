import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pet_care/widgets/calender.dart';

class Booking extends StatefulWidget {
  CalendarController _calController;

  Booking() {
    _calController = new CalendarController();
  }

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  Map<DateTime, List<dynamic>> _events = {};
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    Completer<GoogleMapController> _controller = Completer();
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .70,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                child: Container(
                    color: Color(0xFF2e2b43),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .55,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network(
                        "https://image.tmdb.org/t/p/w500/6NsMbJXRlDZuDzatN2akFdGuTvx.jpg",
                        height: MediaQuery.of(context).size.height * 0.8,
                      ),
                    )),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .45,
                left: 15,
                right: 15,
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Scarlett Johansson',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Text('Veterinaian',
                                        style: TextStyle(
                                            color: Color(0xFFc25e3c),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text(
                                      '10 years of experience',
                                      style: TextStyle(color: Colors.black26),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.mobileAlt,
                                        color: Colors.black54,
                                      ),
                                      Text(
                                        "  \$20",
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Text('    '),
                                      FaIcon(
                                        FontAwesomeIcons.searchLocation,
                                        color: Colors.black54,
                                      ),
                                      Text(
                                        '  1.5km',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Card(
                                    elevation: 8,
                                    color: Color(0xFFc25e3c),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 30, 20, 30),
                                      child: Text(
                                        "4.5",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      "125 reviwes",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'a verified review ',
                          style: TextStyle(color: Colors.black38),
                        ),
                      ),
                      RatingBar.builder(
                        onRatingUpdate: (ratig) {
                          print(ratig);
                        },
                        itemCount: 5,
                        initialRating: 3,
                        itemSize: 20,
                        itemBuilder: (context, _) {
                          return Icon(
                            Icons.star,
                            color: Color(0xccc25e3c),
                            size: 10,
                          );
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(''),
                      Text(
                        'view all 125 reviews',
                        style: TextStyle(
                            color: Color(0xFFc25e3c),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 120, child: CalenderWidget()),
        ),
        // Container(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Card(
        //       elevation: 3,
        //       color: Colors.white,
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: TableCalendar(
        //           events: _events,
        //           weekendDays: [],
        //           calendarStyle: CalendarStyle(),
        //           builders: CalendarBuilders(
        //             todayDayBuilder: (context, date, events) {
        //               if (date.day % 2 == 0) {
        //                 _events.addAll({
        //                   date: [""]
        //                 });
        //               }

        //               return Padding(
        //                 padding: const EdgeInsets.all(5.0),
        //                 child: Container(
        //                   decoration: BoxDecoration(
        //                       color: Color(0xFFc25e3c),
        //                       borderRadius: BorderRadius.circular(15)),
        //                   alignment: Alignment.center,
        //                   child: (Text(
        //                     date.day.toString(),
        //                     style: TextStyle(
        //                         fontSize: 17,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.white),
        //                   )),
        //                 ),
        //               );
        //             },
        //             dayBuilder: (context, date, events) {
        //               if (date.day % 2 == 0) {
        //                 _events.addAll({
        //                   date: [""]
        //                 });
        //               }
        //               return Container(
        //                 alignment: Alignment.center,
        //                 child: Text(
        //                   date.day.toString(),
        //                   style: TextStyle(
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w600,
        //                       color: Colors.black38),
        //                 ),
        //               );
        //             },
        //             dowWeekdayBuilder: (context, weekday) => Container(
        //               alignment: Alignment.center,
        //               decoration: BoxDecoration(
        //                   border: Border(
        //                       top: BorderSide(color: Colors.black54))),
        //               child: Text(
        //                 weekday,
        //                 style: TextStyle(color: Colors.black54),
        //               ),
        //             ),
        //           ),
        //           initialCalendarFormat: CalendarFormat.week,
        //           calendarController: widget._calController,
        //           headerStyle: HeaderStyle(
        //               formatButtonVisible: false,
        //               rightChevronPadding:
        //                   EdgeInsets.fromLTRB(0, 0, 150, 0),
        //               centerHeaderTitle: false,
        //               leftChevronIcon:
        //                   Icon(Icons.calendar_today_rounded)),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Container(
        //   height: 500,
        //   width: 500,
        //   child: GoogleMap(
        //     mapType: MapType.hybrid,
        //     initialCameraPosition: _kGooglePlex,
        //     onMapCreated: (GoogleMapController controller) {
        //       _controller.complete(controller);
        //     },
        //   ),
        // ),
      ],
    ));
  }
}

// eventLoader: (s) {
//   if (s.day % 2 == 0) {
//     return [""];
//   }
// },
// builders: CalendarBuilders(),
// weekendDays: [],
// daysOfWeekHeight: 20,
// daysOfWeekStyle: DaysOfWeekStyle(
//     weekdayStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         color: Colors.black54),
//     decoration: BoxDecoration(
//         border: Border(
//             top: BorderSide(
//                 width: 1, color: Colors.black38)))),
// calendarStyle: CalendarStyle(

// selectedDecoration: BoxDecoration(
//     border: Border(
//         right: BorderSide(color: Colors.red))),
//   todayStyle: ,
//   todayDecoration: BoxDecoration(
//       color: Color(0xCCc25e3c),
//       borderRadius: BorderRadius.circular(10)),
//   todayTextStyle: TextStyle(
//       fontSize: 17,
//       color: Colors.white,
//       fontWeight: FontWeight.bold),
//   cellMargin: EdgeInsets.all(5),
//   weekdayStyle: TextStyle(
//       color: Colors.black26,
//       fontSize: 17,
//       fontWeight: FontWeight.bold),
// ),
// headerStyle: HeaderStyle(
//     leftChevronIcon: Icon(Icons.arrow_right_alt),
//     rightChevronMargin:
//         EdgeInsets.fromLTRB(0, 0, 170, 0),
// rightChevronIcon: FaIcon(
//   FontAwesomeIcons.chevronRight,
//   color: Colors.black38,
//   size: 20,
// ),
// formatButtonVisible: false,
// formatButtonPadding: EdgeInsets.all(5),
// titleTextStyle: TextStyle(
//     fontWeight: FontWeight.w600, fontSize: 16)),
// firstDay: DateTime.utc(2010, 10, 16),
// lastDay: DateTime.utc(2030, 3, 14),
// focusedDay: DateTime.now(),
// calendarFormat: CalendarFormat.week,
// startingDayOfWeek: StartingDayOfWeek.sunday,
