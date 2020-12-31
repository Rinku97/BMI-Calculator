

import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'file:///C:/Users/MR.RB/AndroidStudioProjects/bmi-calculator-flutter/lib/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required  this.bmiResult,@required  this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTitleTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextSTyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text('Developed by @Mr.Rinku', style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',
              onTap: () {
              Navigator.pop(context);
              }
          )
        ],
      )
    );
  }
}
