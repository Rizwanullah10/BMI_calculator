import 'dart:developer';

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../enums/gender_enum.dart';
import '../model/bmi_data.dart';

class BottomButton extends StatelessWidget {
  final String buttonLabelText;
  final Function onButtonPressed;

  const BottomButton({
    super.key,
    required this.buttonLabelText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onButtonPressed(),
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonLabelText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
