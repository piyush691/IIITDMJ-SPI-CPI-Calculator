import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiitdmj_calculator/contentlist/app_bar.dart';
import 'package:iiitdmj_calculator/contentlist/resuable_card.dart';
import 'package:iiitdmj_calculator/contentlist/components.dart';
import 'package:iiitdmj_calculator/contentlist/icon_content.dart';
import 'package:iiitdmj_calculator/cpi_content/upToSem1.dart';
import 'package:iiitdmj_calculator/cpi_content/upToSem2.dart';
import 'package:iiitdmj_calculator/cpi_content/upToSem4.dart';
import 'package:iiitdmj_calculator/cpi_content/upToSem5.dart';
import 'package:iiitdmj_calculator/cpi_content/upToSem6.dart';
import 'package:iiitdmj_calculator/cpi_content/upToSem7.dart';
import 'package:iiitdmj_calculator/cpi_content/upToSem8.dart';
import 'package:iiitdmj_calculator/cpi_content/upTosem3.dart';
import 'package:iiitdmj_calculator/presentation/custom_icons.dart';
class SelectSem extends StatelessWidget {
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
            child: Text('Semesters Done',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
              child: Row(
                children: <Widget>[
                    Expanded(
                        child:Reusablecard(
                            colour: kactiveCardColor,
                            cardChild: IconContent('Completed',Icon(Custom.filter_1,size: 40.0,),),
                            onPress:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return UpToSem1();
                                }),);
                            }
                        )
                    ),
                  Expanded(
                      child:Reusablecard(
                        colour: kactiveCardColor,
                        cardChild: IconContent('Completed',Icon(Custom.filter_2,size: 40.0,)),
                          onPress:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return UpToSem2();
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
                      cardChild: IconContent('Completed',Icon(Custom.filter_3,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return UpToSem3();
                            }),);
                        }
                    )
                ),
                Expanded(
                    child:Reusablecard(
                      colour: kactiveCardColor,
                      cardChild: IconContent('Completed',Icon(Custom.filter_4,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return UpToSem4();
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
                      cardChild: IconContent('Completed',Icon(Custom.filter_5,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return UpToSem5();
                            }),);
                        }
                    )
                ),
                Expanded(
                    child:Reusablecard(
                      colour: kactiveCardColor,
                      cardChild: IconContent('Completed',Icon(Custom.filter_6,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return UpToSem6();
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
                      cardChild: IconContent('Completed',Icon(Custom.filter_7,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return UpToSem7();
                            }),);
                        }
                    )
                ),
                Expanded(
                    child:Reusablecard(
                      colour: kactiveCardColor,
                      cardChild: IconContent('Completed',Icon(Custom.filter_8,size: 40.0,)),
                        onPress:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return UpToSem8();
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
