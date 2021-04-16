import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_care/colors/style.dart';

class VeterinarianItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[200],
                  offset: Offset(5.0, 5.0),
                  blurRadius: 5,
                  spreadRadius: 5),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/DrVet.jpg'))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Peternko Julia',
                        style: TextStyle(
                            color: AppTheme.headLine1Color,
                            fontFamily: 'Co',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Veterinarian',
                        style: TextStyle(
                            color: AppTheme.appDark,
                            fontFamily: 'Co',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    '10 year of experience ',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontFamily: 'Co',
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.grey[100],
                    child: Center(
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey[600],
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
                        color: Colors.grey[600],
                        fontFamily: 'Co',
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.grey[100],
                    child: Center(
                      child: Icon(
                        Icons.payment_rounded,
                        color: Colors.grey[600],
                        size: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: 'Co',
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
