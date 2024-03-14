import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData? icon;
  const RoundIconButton({super.key, this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 7,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: const CircleBorder(),
      fillColor: kBottomContainerColor,
      onPressed: onPressed as void Function(),
      child: Icon(icon),
    );
  }
}
