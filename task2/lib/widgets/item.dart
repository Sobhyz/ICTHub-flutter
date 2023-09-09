import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String txt;
  String? subtxt;
  final IconData icon;
  ListItem({Key? key,required this.txt,required this.icon,String sub = ""}) : super(key: key){
    subtxt = sub;
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const SizedBox(height: 10,),
        Container(
          height: MediaQuery.sizeOf(context).height*0.07,
          width: MediaQuery.sizeOf(context).width*0.9,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(10),
            color: Colors.grey,
            boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5,offset: Offset(1, 1))]
          ),
          child: Row(

            children: [
              Icon(icon,size: 50,),
              const SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
                Text(
                  subtxt!,
                  style: TextStyle(fontSize: subtxt == ""? 0 : 12 ),
                  textAlign: TextAlign.left,
                ),
              ],
            )],
          ),
        ),
      ],
    );
  }
}
