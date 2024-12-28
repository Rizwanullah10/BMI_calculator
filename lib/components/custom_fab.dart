import 'package:bmi_calculator_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const CustomFAB({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed(),
      fillColor: kCustomFABFillColor,
      shape: const CircleBorder(),
      constraints: kCustomFABBoxConstraints,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
