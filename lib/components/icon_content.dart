import 'package:flutter/material.dart';

import '../constants.dart';


class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, this.text});

  final IconData icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0, color: Colors.white),
        SizedBox(height: 10),
        Text(text!, style: textTextStyle),
      ],
    );
  }
}
