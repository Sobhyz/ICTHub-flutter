import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String text;
  final double widthh;
  final double heightt;
  const MyButton({super.key,required this.text,required this.heightt,required this.widthh});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthh,
      height: heightt,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

}