class SPIBrain {

  SPIBrain(this.c1, this.c2, this.c3, this.c4, this.c5, {this.course1,this.course2,this.course3,this.course4,this.course5});

  final int course1;
  final int course2;
  final int course3;
  final int course4;
  final int course5;
  int div;
  final c1,c2,c3,c4,c5;
  double _finalSPI;
  String calculateSPI() {
    div=c1+c2+c3+c4+c5;
    course1==0?div=div-c1:div=div;
    course2==0?div=div-c2:div=div;
    course3==0?div=div-c3:div=div;
    course4==0?div=div-c4:div=div;
    course5==0?div=div-c5:div=div;
    if(div==0)
      div=1;
    _finalSPI=(course1+course2+course3+course4+course5)/div;
    return _finalSPI.toStringAsFixed(1);
  }

  String getResult() {
    if(_finalSPI >=8.0)
      return 'Excellent';
    else if(_finalSPI >7.0)
      return 'Very Good';
    else if(_finalSPI >6.0)
      return 'Good';
    else if(_finalSPI==0)
      return 'You Take SS in All Subject';
    else
      return 'Not Satisfied';
  }

  String getInterpretation() {
    if(_finalSPI >=8.0)
      return 'You are great, Keep it up!';
    else if(_finalSPI >7.0)
      return 'Step Up and Reach your Goal!';
    else if(_finalSPI >6.0)
      return 'Good Doing, Work Hard More!';
    else if(_finalSPI==0)
      return 'Ready for Re-exam';
    else
      return 'You Need more Hard Work!';
  }
}