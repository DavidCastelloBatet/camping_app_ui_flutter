import 'package:camping_app_ui_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: kBackGroungColor,
        body: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/images/main1.svg',
                    width: size.width,
                    height: size.height * 0.60,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: size.width,
                    padding: EdgeInsets.only(top: 40.0, bottom: 10.0),
                    child: Text(
                      'The Camping App',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Text(
                      'Connect with people and plan your next escape to explore this beautiful World!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    width: size.width * 0.5,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          color: kPrimaryColor,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: kPrimaryColor.withOpacity(0.3),
                              blurRadius: 20.0,
                              offset: Offset(0.0, 0.8),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          'LET\'S GO',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 2.5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
