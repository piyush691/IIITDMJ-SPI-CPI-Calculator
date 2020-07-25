import 'dart:math';
class CPIBrain {

  CPIBrain({this.cpi,this.div});
final double cpi;
final int div;
double _finalCPI;
String calculateCPI()
{
      _finalCPI = ((cpi/div)*10).ceilToDouble()/10;
 return _finalCPI.toStringAsFixed(1);
}
  String getResult() {
    if(_finalCPI >=8.0)
      return 'Excellent';
    else if(_finalCPI >7.0)
      return 'Very Good';
    else if(_finalCPI >6.0)
      return 'Good';
    else
      return 'Not Satisfied';
  }

  String getInterpretation() {
    if(_finalCPI >=8.0)
      return 'You are great, Keep it up!';
    else if(_finalCPI >7.0)
      return 'Step Up and Reach your Goal!';
    else if(_finalCPI >6.0)
      return 'Good Doing, Work Hard More!';
    else
      return 'You Need more Hard Work!';
  }
}