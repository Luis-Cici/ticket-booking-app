import 'package:flutter/material.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: styles.headlineStyle1,
        ),
        InkWell(
          onTap: () {
            print("You are tapped");
          },
          child: Text(
            smallText,
            style: styles.textStyle.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
