import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButtonApp extends StatelessWidget {
  const CustomButtonApp({
    super.key,
    required this.onPress,
    required this.text,
  });
  final String text;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(
          bottom: 10.0,
        ),
        color: kButtonContainerColor,
        width: double.infinity,
        height: kButtonContainerHeight,
        child:  Center(
          child: Text(
            text,
            style:kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
