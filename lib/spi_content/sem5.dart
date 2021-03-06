import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iiitdmj_calculator/contentlist/app_bar.dart';
import 'package:iiitdmj_calculator/contentlist/resuable_card.dart';
import 'package:iiitdmj_calculator/contentlist/components.dart';
import 'package:iiitdmj_calculator/contentlist/icon_content.dart';
import 'package:iiitdmj_calculator/spi_content/result_page1.dart';
import 'package:iiitdmj_calculator/spi_content/spi_brain2.dart';
enum branchType {
  cse,
  ece,
  me
}
class Sem5 extends StatefulWidget {
  @override
  _Sem5State createState() => _Sem5State();
}

class _Sem5State extends State<Sem5> {
  branchType selectBranch;
 String course1='DS302 Engineering Design';
 String course2="CS307 Computer Networks";
 String course3='CS308 Operating System';
 String course4='CS309 Language Theory';
 String course5='CS310 Elective';
 String course6='CS311 Lab Based Project-2';
  int grade1=10; int grade2=8; int grade3=9; int grade4=6; int grade5=7; int grade6=9;
  int o1=10*5; int o2=8*4; int o3=9*4; int o4=6*4; int o5=7*2; int o6=9*2;
  Map<int, String> courseGrade = {
    11:'O',
    10:'A+',
    9:'A',
    8:'B+',
    7:'B',
    6:'C+',
    5:'C',
    4:'D+',
    3:'D',
    2:'F',
    0:'SS',

  };

  void courses(branchType selectBranch)
  {
    if(selectBranch==branchType.cse)
    {
      course1='DS302 Engineering Design';
      course2="CS307 Computer Networks";
      course3='CS308 Operating System';
      course4='CS309 Language Theory';
      course5='CS310 Elective';
      course6='CS311 Lab Based Project-2';
    }
    if(selectBranch==branchType.ece)
    {
      course1='DS302 Engineering Design';
      course2="EC307 Fundamentals of Electromagnetic Theory";
      course3='EC308 Control System';
      course4='EC309 Principle of Communication';
      course5='EC310 Elective';
      course6='EC311 Control System + Communication';
    }
    if(selectBranch==branchType.me)
    {
      course1='DS302 Engineering Design';
      course2="ME307 Manufacturing Technology";
      course3='ME308 Fluid Mechanics';
      course4='ME309 Design of Mechanical Components';
      course5='ME310 Elective';
      course6='ME311 Fluid Mechanics & ST';
    }
  }
  String grades(int grade)
  {
    return courseGrade[grade];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: app_barRow(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Reusablecard(
                        onPress: (){
                          setState(() {
                            selectBranch=branchType.cse;
                            courses(selectBranch);
                          });
                        },
                        colour: selectBranch==branchType.cse? kactiveCardColor : kinactiveCardColor,
                        cardChild: IconContent('CSE', Icon(Icons.computer, size: 40.0,),

                        ),
                      ),
                    ),
                    Expanded(
                      child: Reusablecard(
                        onPress: (){
                          setState(() {
                            selectBranch=branchType.ece;
                            courses(selectBranch);
                          });
                        },
                        colour: selectBranch==branchType.ece ? kactiveCardColor : kinactiveCardColor,
                        cardChild: IconContent('ECE', Icon(FontAwesomeIcons.solidLightbulb, size: 40.0,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Reusablecard(
                        onPress: (){
                          setState(() {
                            selectBranch=branchType.me;
                            courses(selectBranch);
                          });
                        },
                        colour: selectBranch==branchType.me ? kactiveCardColor : kinactiveCardColor,
                        cardChild: IconContent('ME', Icon(FontAwesomeIcons.car, size: 40.0,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Reusablecard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        course1,
                        style: klabelTextStyle2,
                      ),
                      Text(
                        grades(grade1),
                        style: kvalueTextStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                if(grade1>=1) {
                                  grade1--;
                                  if(grade1==1)
                                  {
                                    grade1=0;
                                  }
                                }

                              });
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                if(grade1<=10) {
                                  grade1++;
                                  if(grade1==1) {
                                    grade1 = 2;
                                  }
                                }
                              });
                            },
                          ),
//
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Reusablecard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        course2,
                        style: klabelTextStyle2,
                      ),
                      Text(
                        grades(grade2),
                        style: kvalueTextStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                if(grade2>1) {
                                  grade2--;
                                  if(grade2==1)
                                  {
                                    grade2=0;
                                  }
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                if(grade2<=10) {
                                  grade2++;
                                  if(grade2==1)
                                  {
                                    grade2=2;
                                  }
                                }
                              });
                            },
                          ),
//
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Reusablecard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        course3,
                        style: klabelTextStyle2,
                      ),
                      Text(
                        grades(grade3),
                        style: kvalueTextStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                if(grade3>1) {
                                  grade3--;
                                  if(grade3==1)
                                  {
                                    grade3=0;
                                  }
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                if(grade3<=10) {
                                  grade3++;
                                  if(grade3==1)
                                  {
                                    grade3=2;
                                  }
                                }
                              });
                            },
                          ),
//
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Reusablecard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        course4,
                        style: klabelTextStyle2,
                      ),
                      Text(
                        grades(grade4),
                        style: kvalueTextStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                if(grade4>1) {
                                  grade4--;
                                  if(grade4==1)
                                  {
                                    grade4=0;
                                  }
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                if(grade4<=10) {
                                  grade4++;
                                  if(grade4==1)
                                  {
                                    grade4=2;
                                  }
                                }
                              });
                            },
                          ),
//
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Reusablecard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        course5,
                        style: klabelTextStyle2,
                      ),
                      Text(
                        grades(grade5),
                        style: kvalueTextStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                if(grade5>1) {
                                  grade5--;
                                  if(grade5==1)
                                  {
                                    grade5=0;
                                  }
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                if(grade5<=10) {
                                  grade5++;
                                  if(grade5==1)
                                  {
                                    grade5=2;
                                  }
                                }
                              });
                            },
                          ),
//
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Reusablecard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        course6,
                        style: klabelTextStyle2,
                      ),
                      Text(
                        grades(grade6),
                        style: kvalueTextStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                if(grade6>1) {
                                  grade6--;
                                  if(grade6==1)
                                  {
                                    grade6=0;
                                  }
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                if(grade6<=10) {
                                  grade6++;
                                  if(grade6==1)
                                  {
                                    grade6=2;
                                  }
                                }
                              });
                            },
                          ),
//
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  o1=grade1*5; o2=grade2*4; o3=grade3*4; o4=grade4*4; o5=grade5*2; o6=grade6*2;
                  if(grade1==11)
                    o1=10*5;
                  if(grade2==11)
                    o2=10*4;
                  if(grade3==11)
                    o3=10*4;
                  if(grade4==11)
                    o4=10*4;
                  if(grade5==11)
                    o5=10*2;
                  if(grade6==11)
                    o6=10*2;
                  SPIBrain2 calc = SPIBrain2(5, 4, 4, 4, 2, 2,o1,o2,o3,o4,o5,o6);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ResultPage1(
                        spiResult: calc.calculateSPI(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}