import 'package:flutter/material.dart';
import 'package:flutter_calculator1/screens/home_screen.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      initialRoute: HomeScreen.move,
      routes: {
        HomeScreen.move : (context) => HomeScreen(),
      },
    );
  }
}

