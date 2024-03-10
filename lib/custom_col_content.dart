import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CustomColumnContent extends StatelessWidget {
  final IconData customIcon;
  final String customText;

  const CustomColumnContent(
      {super.key, required this.customIcon, required this.customText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(customIcon, size: 80.0),
        const SizedBox(height: 20.0),
        Text(
          customText,
          style: const TextStyle(
            fontSize: 18,
            color: bottomContainerColor,
          ),
        ),
      ],
    );
  }
}
