import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/custom_button_app.dart';
import '../components/reusable_card.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(flex: 5,
            child: ReusableCard(
             onPress: (){},
             color: kActiveCardColor,
             cardChild: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text(
                   resultText.toUpperCase(),
                 style: kResultTextStyle,
                 ),
                 Text(
                   bmiResult,
                 style: kBMITextStyle,
                 ),
                 Text(
                   textAlign: TextAlign.center,
                   interpretation
                   ,style: kBodyTextStyle,)
               ],
             ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomButtonApp(
              onPress: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATOR',
            ),
          ),
        ],
      ),

    );
  }
}
