import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iiitdmj_calculator/contentlist/icon_content.dart';
import 'package:iiitdmj_calculator/contentlist/resuable_card.dart';
import 'package:iiitdmj_calculator/cpi_content/selectSem.dart';
import 'contentlist/app_bar.dart';
import 'package:iiitdmj_calculator/contentlist/components.dart';
import 'package:iiitdmj_calculator/spi_content/selectsemspi.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: app_barRow(),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Reusablecard(
                          colour: kactiveCardColor,
                          cardChild: IconContent('SPI', Icon(FontAwesomeIcons.calculator,size: 60.0,),
                          ),
                          height1: 200.0,
                            onPress:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return SelectSemSPI();
                                }),);
                            }
                        )

                    ),
                    Expanded(
                        child: Reusablecard(
                          colour: kactiveCardColor,
                          cardChild: IconContent('CPI', Icon(FontAwesomeIcons.calculator,size: 60.0,),
                          ),
                          height1: 200.0,
                          onPress:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return SelectSem();
                              }),);
                          }
                          ),

                        ),
                  ],
                ),
                Text('💖💖Made By Piyush Agrawal🎭🎭',
                    style: klabelTextStyle,
                ),
              ],
        ),
      ),
    );
  }
}


