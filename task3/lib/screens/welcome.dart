import 'package:flutter/material.dart';
import 'package:task3/screens/homescreen.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 5,),
        (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        }
    );
  }
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Welcome"),),);
  }
}

