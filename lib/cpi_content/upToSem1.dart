import 'package:flutter/material.dart';
import 'package:iiitdmj_calculator/contentlist/app_bar.dart';
import 'package:iiitdmj_calculator/contentlist/components.dart';
import 'package:iiitdmj_calculator/contentlist/resuable_card.dart';

import 'Result_Page.dart';
import 'cpi_brain.dart';
class UpToSem1 extends StatefulWidget {
  @override
  _UpToSem1State createState() => _UpToSem1State();
}

class _UpToSem1State extends State<UpToSem1> {
  double spi1=8.0;
  int div=1;
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
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 0,0 ),
          alignment: Alignment.bottomLeft,
          child: Text('Enter Your SPI!',
          style: kTitleTextStyle,
          ),
        ),
        Expanded(
            child: Reusablecard(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SEMESTER 1',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        spi1.toString(),
                        style: kvalueTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x29311330),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 10.0,

                      ),
                      overlayShape: RoundSliderThumbShape(
                        enabledThumbRadius: 20.0,
                      ),
                    ),
                    child: Slider(
                      value: spi1.toDouble(),
                      min: 0,
                      max: 10,
                      onChanged: (double newValue) {
                        setState(() {
                          spi1 = double.parse(newValue.toStringAsFixed(1));
                        });
                      },
                    ),
                  ),
                ],
                ),
            ),
        ),
        GestureDetector(
          onTap: () {
            double total=spi1;
            CPIBrain calc = CPIBrain(cpi: total,div: div);

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ResultPage(
                  cpiResult: calc.calculateCPI(),
                  resultText: calc.getResult(),
                  interpretation: calc.getInterpretation(),
                );
              }),);
          },
          child: Container(

            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kbottomHeight,
          ),
        )
      ],
      ),
    );
  }
}
