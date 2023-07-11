import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutLine_Button extends StatelessWidget{
  final String text;
  final VoidCallback onPress;
  final Color color;
  final Color colorText;

  OutLine_Button(
      {required this.text, required this.onPress,
        required this.color, required this.colorText});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: colorText,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        onPressed: onPress,
        child: Text(text , style: const TextStyle(fontSize: 20),)
    );
  }

}