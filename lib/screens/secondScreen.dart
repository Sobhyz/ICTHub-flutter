import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String txt;
  const SecondScreen({Key? key,required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(
            txt,
          style: TextStyle(fontSize: 32,),
        )]),
      ),
    );
  }
}
