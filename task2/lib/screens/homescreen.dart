import 'package:flutter/material.dart';
import 'package:task2/screens/secondScreen.dart';
import 'package:task2/widgets/item.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<ListItem> items = [ListItem(txt: "Alarm", icon: Icons.alarm,sub: "WakeUp"),
    ListItem(txt: "Add", icon: Icons.add),
    ListItem(txt: "Accessible", icon: Icons.accessible,sub: "for disabled"),
    ListItem(txt: "Call", icon: Icons.add_call,sub: "you better call saul")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,

        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              child: items[index],
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen(txt: items[index].txt)),
                );
              },
          );

        },

      ),
    );
  }
}
