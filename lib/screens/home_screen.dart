import 'package:flutter/material.dart';
import 'package:flutter_calculator1/constant.dart';
import 'package:flutter_calculator1/widgets/CalculatorButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';


class HomeScreen extends StatefulWidget {

  static const String move = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _history = '';
  String _expression = '';

  void numClick(String text){
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text){
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void Clear(String text){
    setState(() {
      _expression = '';
    });
  }

  void Evaluate(String text){

    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                child: Text( _history,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 24.0,
                    color: Color(0xFF545F61)
                  ),
                ),
                ),
                alignment: Alignment(1, 1),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Text(_expression,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontSize: 48.0
                    ),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    callBack: allClear,
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: 'C',
                    callBack: Clear,
                    fillColor: 0xFF6C807F,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '%',
                    callBack: numClick,
                    fillColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '/',
                    callBack: numClick,
                    fillColor: 0xFFFFFFFF,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    text: '7',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '8',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '9',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '*',
                    callBack: numClick,
                    fillColor: 0xFFFFFFFF,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    text: '4',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '5',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '6',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '-',
                    callBack: numClick,
                    fillColor: 0xFFFFFFFF,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    text: '1',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '2',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '3',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '+',
                    callBack: numClick,
                    fillColor: 0xFFFFFFFF,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    text: '.',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '0',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '00',
                    callBack: numClick,
                    fillColor: 0xFF00000000,
                    textColor: 0xFFFFFFFFFF,
                  ),
                  CalculatorButton(
                    text: '=',
                    callBack: Evaluate,
                    fillColor: 0xFFFFFFFF,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

