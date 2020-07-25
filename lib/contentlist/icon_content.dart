import 'package:flutter/material.dart';
import 'components.dart';


class IconContent extends StatelessWidget {
  IconContent(this.label, this.iconShape);
  final Icon iconShape;
  final String label;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconShape,
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: klabelTextStyle,
        ),
      ],
    );
  }
}
// WE CAN USE THIS INSTEAD OF TERNARY OPERATOR;
//  Color maleCardColor = inactiveCardColor;
//  Color femaleCardColor = inactiveCardColor;
//
//  void updateColor(genderType selectedGender)
//  {
//    if(selectedGender==genderType.male)
//      {
//        if(maleCardColor==inactiveCardColor)
//          {
//            maleCardColor=activeCardColor;
//            femaleCardColor=inactiveCardColor;
//          }
//        else {
//          maleCardColor=inactiveCardColor;
//        }
//      }
//    if(selectedGender==genderType.female)
//      {
//        if(femaleCardColor==inactiveCardColor)
//        {
//          femaleCardColor=activeCardColor;
//          maleCardColor=inactiveCardColor;
//        }
//        else {
//          femaleCardColor=inactiveCardColor;
//        }
//      }
//  }