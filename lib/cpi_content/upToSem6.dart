import 'package:flutter/material.dart';
import 'package:iiitdmj_calculator/contentlist/app_bar.dart';
import 'package:iiitdmj_calculator/contentlist/components.dart';
import 'package:iiitdmj_calculator/contentlist/resuable_card.dart';
import 'Result_Page.dart';
import 'cpi_brain.dart';
class UpToSem6 extends StatefulWidget {
  @override
  _UpToSem6State createState() => _UpToSem6State();
}

class _UpToSem6State extends State<UpToSem6> {
  double spi1=8.0;
  double spi2 = 7.5;
  double spi3 = 7.0;
  double spi4 = 8.5;
  double spi5 = 6.5;
  double spi6 = 9.0;
  int div=6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: app_barRow(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 3.0, 0,0 ),
            child: Text('Enter Your SPI!',
              style: kTitleTextStyle2,
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SEMESTER 1',
                    style: klabelTextStyle3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        spi1.toString(),
                        style: kvalueTextStyle3,
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
                            enabledThumbRadius: 15.0,
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

                ],
              ),
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SEMESTER 2',
                    style: klabelTextStyle3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        spi2.toString(),
                        style: kvalueTextStyle3,
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
                            enabledThumbRadius: 15.0,
                          ),
                        ),
                        child: Slider(
                          value: spi2.toDouble(),
                          min: 0,
                          max: 10,
                          onChanged: (double newValue) {
                            setState(() {
                              spi2 = double.parse(newValue.toStringAsFixed(1));
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SEMESTER 3',
                    style: klabelTextStyle3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        spi3.toString(),
                        style: kvalueTextStyle3,
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
                            enabledThumbRadius: 15.0,
                          ),
                        ),
                        child: Slider(
                          value: spi3.toDouble(),
                          min: 0,
                          max: 10,
                          onChanged: (double newValue) {
                            setState(() {
                              spi3 = double.parse(newValue.toStringAsFixed(1));
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SEMESTER 4',
                    style: klabelTextStyle3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        spi4.toString(),
                        style: kvalueTextStyle3,
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
                            enabledThumbRadius: 15.0,
                          ),
                        ),
                        child: Slider(
                          value: spi4.toDouble(),
                          min: 0,
                          max: 10,
                          onChanged: (double newValue) {
                            setState(() {
                              spi4 = double.parse(newValue.toStringAsFixed(1));
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SEMESTER 5',
                    style: klabelTextStyle3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        spi5.toString(),
                        style: kvalueTextStyle3,
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
                            enabledThumbRadius: 15.0,
                          ),
                        ),
                        child: Slider(
                          value: spi5.toDouble(),
                          min: 0,
                          max: 10,
                          onChanged: (double newValue) {
                            setState(() {
                              spi5 = double.parse(newValue.toStringAsFixed(1));
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SEMESTER 6',
                    style: klabelTextStyle3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        spi6.toString(),
                        style: kvalueTextStyle3,
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
                            enabledThumbRadius: 15.0,
                          ),
                        ),
                        child: Slider(
                          value: spi6.toDouble(),
                          min: 0,
                          max: 10,
                          onChanged: (double newValue) {
                            setState(() {
                              spi6 = double.parse(newValue.toStringAsFixed(1));
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              double total=spi1+spi2+spi3+spi4+spi5+spi6;
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
