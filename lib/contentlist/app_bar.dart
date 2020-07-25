import 'package:flutter/material.dart';
class app_barRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'images/iiit.jpg',
          fit: BoxFit.contain,
          height: 40.0,
          width: 40.0,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Text('IIITDMJ CALCULATOR'),
        ),
      ],
    );
  }
}