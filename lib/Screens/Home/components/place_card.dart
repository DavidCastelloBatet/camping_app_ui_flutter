import 'package:flutter/material.dart';
import 'package:camping_app_ui_flutter/Models/Place.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({Key key, @required this.place}) : super(key: key);
  final Place place;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        bottom: 20.0,
      ),
      child: SizedBox(
        width: 150.0,
        child: GestureDetector(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  place.image,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 150.0,
                height: 200.0,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(20.0),
                decoration: new BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 6.0,
                        offset: Offset(0, 3.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
