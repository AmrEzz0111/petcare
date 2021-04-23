import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

import 'appointment-btn.dart';

class BookingCard extends StatelessWidget {
  final List<Widget> _starts = [
    Icon(
      Icons.star,
      size: 17,
      color: Colors.yellow,
    ),
    Icon(
      Icons.star,
      size: 17,
      color: Colors.yellow,
    ),
    Icon(
      Icons.star,
      size: 17,
      color: Colors.yellow,
    ),
    Icon(
      Icons.star,
      size: 17,
      color: Colors.yellow,
    ),
    Icon(
      Icons.star,
      size: 17,
      color: Colors.yellow,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: Colors.black12,
      child: Container(
        height: deviceData.size.height * 0.46,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1603179415710-79d73cdb2003?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
                      fit: BoxFit.cover,
                      height: 110,
                      width: 120,
                    ),
                  ),
                  Container(
                    // width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.red,
                          child: AutoSizeText(
                            'Petrenko Julia',
                            maxLines: 1,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Veterinarian',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Row(
                            children: [
                              Row(
                                children: _starts,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '125 Reviews',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              '1.5 km',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.monetization_on_outlined,
                                size: 20,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              '\$20',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 140,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.wallet_travel,
                            size: 20,
                            color: Colors.black87,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'Veterinary clinic "Alden-Vet"',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '141 N Union Ave, Los Angeles, CA',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.access_time_rounded,
                          color: Colors.black87,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Wed 9 Sep — 10:30 am',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 150, height: 40),
                  child: AppointmentBtn(
                    onPressed: () => print(1),
                    text: 'Edit',
                    txtColor: Colors.white,
                    color: AppTheme.appDark,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 150, height: 40),
                  child: AppointmentBtn(
                    onPressed: () => print(1),
                    text: 'Cancel',
                    txtColor: AppTheme.headLine1Color,
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
