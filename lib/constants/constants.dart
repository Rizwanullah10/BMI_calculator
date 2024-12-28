import 'package:flutter/material.dart';

// APPLICATION WIDE CONSTANTS
const kAppBarThemeColor = Color(0xFF0A0E21);
const kAppScaffoldColor = Color(0xFF0A0E21);

// Homepage
// const is used when the value of the variable is available on compile time itself
// And the value can't change once its assigned
// In Flutter, naming convention of Constants is `kConstantName`
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

// Icon Content
const kContentTextColor = Color(0xFF8D8E98);
const kContentTextStyle = TextStyle(
  fontSize: 18.0,
  color: kContentTextColor,
);

// Height Slider
const kFatTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const kSliderActiveColor = Color(0xFFEB1555);
const kSliderOverlayActiveColor = Color(0x29EB1555);
const kSliderInActiveTrackColor = Color(0xFF8D8E98);

const kCustomSliderTheme = SliderThemeData(
  activeTrackColor: Colors.white,
  inactiveTrackColor: kSliderInActiveTrackColor,
  thumbColor: kSliderActiveColor,
  overlayColor: kSliderOverlayActiveColor,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
);

// Custom FAB
const kCustomFABFillColor = Color(0xFF4C4F5E);
const kCustomFABBoxConstraints = BoxConstraints(
  minWidth: 46.0,
  minHeight: 46.0,
);

// BMI Result Interpretation
const kResultOverweight =
    "You have a higher than normal body weight. Try to exercise more.";
const kResultNormal = "You have a normal body weight. Good job!";
const kResultUnderweight =
    "You have a lower than normal body weight. You can eat a bit more.";

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kResultScoreTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
);

const kResultInterpretationTextStyle = TextStyle(fontSize: 18.0);
