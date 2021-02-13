import 'package:camping_app_ui_flutter/Models/Place.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:camping_app_ui_flutter/Models/Activity.dart';
import 'package:camping_app_ui_flutter/Screens/Home/components/activity_card.dart';
import 'package:camping_app_ui_flutter/constants.dart';

import 'components/place_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/main1.svg',
                          width: size.width,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.35),
                      padding: EdgeInsets.only(
                        top: 30.0,
                        left: 30.0,
                        right: 30.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34.0),
                          topRight: Radius.circular(34.0),
                        ),
                      ),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Activities you Love',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(demoActivities.length,
                                    (index) {
                                  return ActivityCard(
                                    activity: demoActivities[index],
                                  );
                                }),
                              ],
                            ),
                          ),
                          Text(
                            'Recomended Places',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                  demoPlaces.length,
                                  (index) {
                                    return PlaceCard(
                                      place: demoPlaces[index],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            margin: EdgeInsets.only(bottom: 20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFf5f5f5),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Create New Place',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xFF5a5a5a),
                                      ),
                                    ),
                                    Text(
                                      'Create camping with your Friends',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF5a5a5a),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: IconButton(
                                    icon: SvgPicture.asset(
                                        'assets/icons/new.svg'),
                                    onPressed: () {
                                      print('new');
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
