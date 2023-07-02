import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import '../components/pie_chart.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({ @required this.bmiResult,@required this.interpretation, @required this.resultText });


  final String? resultText;
  final String? interpretation;
  final String? bmiResult;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText!.toUpperCase(),
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult?? '',
                    textAlign: TextAlign.center,
                    style: kBMITextStyle,
                  ),
                  PieChart(selected: resultText),
                  Text(
                    interpretation?? '',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(onTap: () {Navigator.pop(context);}, buttonTitle: 'RECALCULATE'),
        ],
      ),
    );
  }
}
