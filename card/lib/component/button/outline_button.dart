import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Outline_Button extends StatelessWidget {
    final String text;
    final VoidCallback onPressed;
    //final String colors;
    final Color color;
    final Color colorFore;
    final double widthBtn;
    final double heightBtn;


    const Outline_Button({required this.text,required this.onPressed, required this.color, required this.colorFore, required this.widthBtn, required this.heightBtn});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: colorFore,
          minimumSize: Size(widthBtn, heightBtn),
        ),
        onPressed: onPressed,
        child: Text(text , style: const TextStyle(fontSize: 20),));
  }
}