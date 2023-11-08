import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      this.isColor,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? styles.headlineStyle3.copyWith(color: Colors.white)
              : styles.headlineStyle3,
        ),
        Gap(5),
        Text(
          secondText,
          style: isColor == null
              ? styles.headlineStyle3.copyWith(color: Colors.white)
              : styles.headlineStyle3,
        )
      ],
    );
  }
}
