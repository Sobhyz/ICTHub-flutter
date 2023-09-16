

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task3/screens/detailedProduct.dart';
import 'package:task3/widgets/listItem.dart';
import '../model/productModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                    "New Products",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,

                    ),
                  ),
              Expanded(
                child: GridView.builder(

                itemCount: products.length,
                itemBuilder: (BuildContext context, int index){
                  return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedProduct(product: products[index])));
                      },
                      child: ListItem(product: products[index])
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

                ),
              ),
            ],
          ),
        )
    );
  }
  Future<List<Product>> request() async{
    var url = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(url);
    List<Product> tmp=[];
    if(response.statusCode == 200){
      Map<String,dynamic> jsonResponse = jsonDecode(response.body);

      for(Map<String,dynamic> item in jsonResponse["products"]){
        tmp.add(Product.fromJson(item));
      }
    }
    return tmp;
  }
  @override
  void initState() {
      super.initState();
      Future.delayed(
        Duration.zero,
          ()async{
            products = await request();
            setState(() {

            });
          }
      );
  }
}
