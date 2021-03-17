import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {

  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const CalculatorButton({
    Key key,
    this.fillColor = 0xFFFFFFFF,
    this.textColor = 0xFF000000,
    this.textSize = 24.0,
    this.callBack,
    this.text}
    ) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 65.0,
        height: 65.0,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(text,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: textSize,
                ),
              ),
          ),
          onPressed: (){
            callBack(text);
          },
          color: fillColor != null ? Color(fillColor):null,
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
