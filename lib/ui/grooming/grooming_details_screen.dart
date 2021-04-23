import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/models/petServicesModel.dart';
import 'package:pet_care/ui/grooming/groom_place_details.dart';
import 'package:pet_care/ui/grooming/pet_groom_service.dart';
import 'package:pet_care/ui/grooming/review_screen.dart';

class GroomingDetailScreen extends StatefulWidget {
  final PetServices petService;

  const GroomingDetailScreen({Key key, this.petService}) : super(key: key);
  @override
  _GroomingDetailScreenState createState() => _GroomingDetailScreenState();
}

class _GroomingDetailScreenState extends State<GroomingDetailScreen>
    with TickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
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
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .48,
                        child: Image.network(
                          widget.petService.picture,
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
                                widget.petService.name,
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
                                    widget.petService.serviceName == 'grooming'
                                        ? 'Pet Groomer'
                                        : widget.petService.serviceName ==
                                                'training'
                                            ? 'Pet Trainer'
                                            : widget.petService.serviceName ==
                                                    'pharmacy'
                                                ? 'Pet Pharmacy'
                                                : 'Pet Store',
                                    style: TextStyle(
                                        color: AppTheme.appDark,
                                        fontFamily: 'Co',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    widget.petService.address,
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
                                        initialRating: widget.petService.rate,
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
                                        widget.petService.reviews.length
                                                .toString() +
                                            ' Reviews',
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
                widget.petService.serviceName == 'grooming'
                    ? 'Services'
                    : widget.petService.serviceName == 'training'
                        ? 'Services'
                        : widget.petService.serviceName == 'pharmacy'
                            ? 'Products'
                            : 'Products',
              ),
            ),
            Tab(
              child: Text(
                'Details',
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
          PetGroomService(
            petServices: widget.petService.services,
            role: widget.petService.serviceName,
          ),
          GroomPlaceDetails(
            petServices: widget.petService,
          ),
        ],
      ),
    );
  }
}
