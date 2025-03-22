import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPress,
    required this.icon,
  });
  final Function onPress;
  final  IconData icon;
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      backgroundColor: kColorFloating,
      onPressed: () {
        onPress();
      },
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}
