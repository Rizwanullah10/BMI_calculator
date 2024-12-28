import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants/constants.dart';

class ReusableIconContent extends StatelessWidget {
  final IconData icon;
  final String contentText;

  const ReusableIconContent({
    super.key,
    required this.icon,
    required this.contentText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(height: 16.0),
        Text(
          contentText,
          style: kContentTextStyle,
        )
      ],
    );
  }
}
