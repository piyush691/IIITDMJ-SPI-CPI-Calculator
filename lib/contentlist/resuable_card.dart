import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {

  Reusablecard({@required this.colour, this.cardChild, this.onPress,this.height1});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  final double height1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        height: height1,
        margin: EdgeInsets.all(13.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
