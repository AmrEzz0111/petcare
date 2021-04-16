import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/pet_services/grooming/groom_place_details.dart';
import 'package:pet_care/pet_services/grooming/grooming_place_work.dart';
import 'package:pet_care/pet_services/grooming/pet_groom_service.dart';
import 'package:pet_care/pet_services/grooming/review_screen.dart';

class GroomingDetailScreen extends StatefulWidget {
  @override
  _GroomingDetailScreenState createState() => _GroomingDetailScreenState();
}

class _GroomingDetailScreenState extends State<GroomingDetailScreen>
    with TickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .59,
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    top: 0,
                    child: Container(
                        color: Color(0xFF2e2b43),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .48,
                        child: Image.asset(
                          "assets/images/petGroom.jpg",
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .39,
                    left: 10,
                    right: 10,
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Grooming Studio Ltd',
                                style: TextStyle(
                                    color: AppTheme.headLine1Color,
                                    fontFamily: 'Co',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Pet Groomer',
                                    style: TextStyle(
                                        color: AppTheme.appDark,
                                        fontFamily: 'Co',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '99 Battersea Park Rd',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontFamily: 'Co',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      RatingBar(
                                        initialRating: 4.5,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        ignoreGestures: true,
                                        itemSize: 14,
                                        itemCount: 5,
                                        ratingWidget: RatingWidget(
                                          full: Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          half: Icon(
                                            Icons.star,
                                            color: Colors.black12,
                                          ),
                                          empty: Icon(
                                            Icons.star,
                                            color: Colors.black12,
                                          ),
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '125 Reviews',
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontFamily: 'Co',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 11,
                                        backgroundColor: Colors.grey[100],
                                        child: Center(
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.grey[400],
                                            size: 17,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2.4 km',
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontFamily: 'Co',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            buildTabbar(),
            buildExpandedTabBarView()
          ],
        ),
      ),
    );
  }

  buildTabbar() {
    return Container(
      height: 33,
      child: TabBar(
          indicatorWeight: 2.5,
          labelColor: AppTheme.headLine1Color,
          indicatorColor: AppTheme.appDark,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Co',
            fontSize: 14,
          ),
          isScrollable: true,
          controller: controller,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              child: Text(
                'Reviews',
              ),
            ),
            Tab(
              child: Text(
                'Services',
              ),
            ),
            Tab(
              child: Text(
                'Details',
              ),
            ),
            Tab(
              child: Text(
                'Our Work',
              ),
            ),
          ]),
    );
  }

  buildExpandedTabBarView() {
    return Container(
      height: 330,
      child: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: <Widget>[
          ReviewScreen(),
          PetGroomService(),
          GroomPlaceDetails(),
          GroomingPlaceWork(),
        ],
      ),
    );
  }
}
