import 'package:flutter/material.dart';
import 'package:task1/widgets/button.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome Back",textScaleFactor: 2.0,)
              ],
            ),
            Image.asset("assets/pic.jpeg",width: 300,),
            const MyButton(text: "Get Started", heightt: 50, widthh: 150,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(text: "SignUp", widthh: 100, heightt: 50,),
                MyButton(text: "Login", widthh: 100, heightt: 50,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
