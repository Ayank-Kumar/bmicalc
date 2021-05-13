import 'dart:math';
double _bmi ;
class Formulae {
  final int heightwa ;
  final int weightwa ;
  Formulae({this.heightwa,this.weightwa});

  String bmiResult (){
     _bmi = weightwa / pow(heightwa/100, 2) ;
    return _bmi.toStringAsFixed(1) ;
  }
                                              ///getter and setter to yaar hote hi mainly private properties ke liye ha .
  String explanatory (){
    if(_bmi>=25.0){
      return "You have a higher than normal body weight. Try to Exercise more" ;
    }
    else if(_bmi >= 18.0){
      return "You have a normal body weight. Good job !" ;
    }
    else {
      return "You have a lower than normal body weight.You should eat a bit more " ;
    }
  }                 ///agar wo piblic ha fir to yaar aap usko seedhe access kr skte ho bina getter ke
                                            /// aur jaha use kr rhe ho waha change bhi kr skte ho bina setter ke
  String checker (){
    if(_bmi>=25.0){
      return "Overweight" ;
    }
    else if(_bmi >= 18.0){
      return "Normal" ;
    }
    else {
      return "Underweight" ;
    }
  }
}
