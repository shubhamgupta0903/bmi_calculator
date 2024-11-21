import 'dart:math';

class calculatorbrain{
  final int height;
  final int weight;
  double _bmi=0;
  calculatorbrain({required this.height,required this.weight});

  String calculatebmi(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);//only one decimal place
  }

  String getresult(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18&&_bmi<25){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getinterpretation(){
    if(_bmi>=25){
      return 'Oye motu!! gym ja gym ....!';
    }
    else if(_bmi>18&&_bmi<25){
      return 'waah!! Tune to bhut achha maintain kia h!';
    }
    else{
      return 'Kya yrr!! ghr pe khana peena na milta kya!';
    }
  }

}