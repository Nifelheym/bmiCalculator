import 'package:bmi_calculator/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/Bottom_buttom.dart';

class ResultPAge extends StatelessWidget {
  ResultPAge({@required this.bmiResult, @required this.interpretation, @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CLCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
            child: Text(
                'Your Result',
                style: kNumberTextStyle,
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
            colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMItextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
          ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonOnTatile: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
