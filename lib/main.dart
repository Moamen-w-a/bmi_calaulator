import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        sliderTheme:
             SliderTheme.of(context).copyWith(
              activeTrackColor:Colors.white ,
               inactiveTrackColor:Color(0xFF8D8E98) ,
               thumbColor: kButtonContainerColor,
              overlayColor: Color(0x29EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            ),
        scaffoldBackgroundColor: Color(0xFF0B0F21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
          ),
          centerTitle: true,
        ),
      ),
       home:InputPage(),
    );
  }
}
