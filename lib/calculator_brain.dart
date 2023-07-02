import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;


  String calculateBMI() {
    double _bmi = (weight?? 60) / pow((height?? 180) / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    double _bmi = (weight?? 60) / pow((height?? 180) / 100, 2);
    if (_bmi >= 25) {
      return 'Overweight';
    }else if(_bmi > 18.5) {
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double _bmi = (weight?? 60) / pow((height?? 180) / 100, 2);
    if (_bmi >= 25) {
      return 'Your BMI indicates that you are underweight, please consult with a healthcare professional to ensure a healthy weight gain and improve your well-being.';
    }else if(_bmi > 18.5) {
      return 'Congratulations! Your BMI falls within the normal weight range, keep up the good work and maintain a healthy lifestyle for overall well-being.';
    }else{
      return 'Your BMI indicates that you are underweight, please consult with a healthcare professional to ensure a healthy weight gain and improve your well-being.';
    }
  }

}
