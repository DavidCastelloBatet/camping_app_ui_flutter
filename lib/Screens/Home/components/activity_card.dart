import 'package:camping_app_ui_flutter/Models/Activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ActivityCard extends StatefulWidget {
  const ActivityCard({
    Key key,
    @required this.activity,
  }) : super(key: key);

  final Activity activity;
  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        bottom: 20.0,
      ),
      child: SizedBox(
        width: 100.0,
        child: GestureDetector(
          onTap: () {
            print('on tap');
          },
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: kPrimaryColor,
                width: 1,
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Hero(
                    tag: widget.activity.id,
                    child: SvgPicture.asset(
                      widget.activity.icon,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Text(
                  widget.activity.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
