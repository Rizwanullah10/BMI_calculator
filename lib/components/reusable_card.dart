import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // final is used when the value of the variable is available only on runtime
  // And the value can't change once its assigned
  final Color cardBackgroundColor;
  final Widget? cardChild;
  final Function? onCardTap;

  const ReusableCard({
    super.key,
    this.cardChild,
    this.onCardTap,
    required this.cardBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onCardTap!(),
        child: Container(
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: cardBackgroundColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: cardChild,
          // height: 200.0,
          // width: 170.0,
        ),
      ),
    );
  }
}
