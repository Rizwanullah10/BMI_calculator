import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:bmi_calculator_flutter/constants/constants.dart';
import 'package:bmi_calculator_flutter/model/bmi_data.dart';
import 'package:bmi_calculator_flutter/util/bmi_util.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final BMIDataModel dataModel;

  const ResultPage({super.key, required this.dataModel});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    BMIUtil util = BMIUtil(
      weight: widget.dataModel.mWeight,
      height: widget.dataModel.mHeight,
    );

    util.getBMIScore();

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: const Text(
                "Your Results",
                style: kFatTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardBackgroundColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    util.getBMIResult(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    util.getBMIScore(),
                    style: kResultScoreTextStyle,
                  ),
                  Text(
                    util.getInterpretation(),
                    style: kResultInterpretationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              buttonLabelText: "RE - CALCULATE",
              onButtonPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
