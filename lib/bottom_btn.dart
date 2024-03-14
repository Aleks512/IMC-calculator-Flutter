import 'package:flutter/material.dart';
import 'constants.dart';

class BigYellowBotton extends StatelessWidget {
  final Function onTap;
  final String BtnText;

  BigYellowBotton({super.key, required this.onTap, required this.BtnText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function(),
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            BtnText,
            style: kLargrButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
