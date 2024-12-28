import 'dart:developer';

import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/model/bmi_data.dart';
import 'package:bmi_calculator_flutter/screens/result_page.dart';
import '../../components/reusable_icon_content.dart';
import '../../components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/custom_fab.dart';
import '../enums/gender_enum.dart';
import 'package:bmi_calculator_flutter/constants/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 40;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gender Selection Row
                Row(
                  children: [
                    // Use Flexible instead of Expanded to avoid unbounded height
                    Flexible(
                      child: ReusableCard(
                        onCardTap: () => setState(() {
                          selectedGender = Gender.MALE;
                        }),
                        cardBackgroundColor: (selectedGender == Gender.MALE)
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: const ReusableIconContent(
                          icon: FontAwesomeIcons.mars,
                          contentText: "MALE",
                        ),
                      ),
                    ),
                    Flexible(
                      child: ReusableCard(
                        onCardTap: () => setState(() {
                          selectedGender = Gender.FEMALE;
                        }),
                        cardBackgroundColor: (selectedGender == Gender.FEMALE)
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: const ReusableIconContent(
                          icon: FontAwesomeIcons.venus,
                          contentText: "FEMALE",
                        ),
                      ),
                    ),
                  ],
                ),

                // Height Slider
                ReusableCard(
                  cardBackgroundColor: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("HEIGHT", style: kContentTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kFatTextStyle),
                          const Text(" cm", style: kContentTextStyle)
                        ],
                      ),
                      SliderTheme(
                        data: kCustomSliderTheme,
                        child: Slider(
                          value: height.roundToDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double de) {
                            setState(() {
                              height = de.toInt();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Weight and Age Row
                Row(
                  children: [
                    // Weight Container
                    Flexible(
                      child: ReusableCard(
                        cardBackgroundColor: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("WEIGHT", style: kContentTextStyle),
                            Text(weight.toString(), style: kFatTextStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomFAB(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () => setState(() {
                                    weight--;
                                  }),
                                ),
                                const SizedBox(width: 16.0),
                                CustomFAB(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () => setState(() {
                                    weight++;
                                  }),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // AGE Container
                    Flexible(
                      child: ReusableCard(
                        cardBackgroundColor: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("AGE", style: kContentTextStyle),
                            Text(age.toString(), style: kFatTextStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomFAB(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () => setState(() {
                                    age--;
                                  }),
                                ),
                                const SizedBox(width: 16.0),
                                CustomFAB(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () => setState(() {
                                    age++;
                                  }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Bottom Button
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BottomButton(
                    buttonLabelText: "CALCULATE BMI",
                    onButtonPressed: () {
                      if (selectedGender != null) {
                        BMIDataModel model = BMIDataModel(
                          mGender: selectedGender!,
                          mHeight: height,
                          mWeight: weight,
                          mAge: age,
                        );
                        showResultsScreen(model, context);
                      } else {
                        log("Gender is NULL", level: 20000);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please select a gender to proceed"),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showResultsScreen(BMIDataModel model, BuildContext mContext) {
    setState(() {
      Navigator.push(
        mContext,
        MaterialPageRoute(builder: (mContext) => ResultPage(dataModel: model)),
      );
    });
  }
}
