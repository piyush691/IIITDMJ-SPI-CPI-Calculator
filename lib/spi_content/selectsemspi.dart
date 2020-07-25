import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiitdmj_calculator/contentlist/app_bar.dart';
import 'package:iiitdmj_calculator/contentlist/resuable_card.dart';
import 'package:iiitdmj_calculator/contentlist/components.dart';
import 'package:iiitdmj_calculator/contentlist/icon_content.dart';
import 'sem1.dart';
import 'sem2.dart';
import 'sem3.dart';
import 'sem4.dart';
import 'sem5.dart';
import 'sem6.dart';
import 'sem7.dart';
import 'sem8.dart';
import 'package:iiitdmj_calculator/presentation/custom_icons.dart';
class SelectSemSPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: app_barRow(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0,10.0,0,0),
            alignment: Alignment.bottomLeft,
            child: Text('Select the Semester',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_1,size: 40.0,),),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem1();
                            }),);
                        }
                    )
                ),
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_2,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem2();
                            }),);
                        }
                    )
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_3,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem3();
                            }),);
                        }
                    )
                ),
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_4,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem4();
                            }),);
                        }
                    )
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_5,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem5();
                            }),);
                        }
                    )
                ),
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_6,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem6();
                            }),);
                        }
                    )
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_7,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem7();
                            }),);
                        }
                    )
                ),
                Expanded(
                    child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Semester',Icon(Custom.filter_8,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sem8();
                            }),);
                        }
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
