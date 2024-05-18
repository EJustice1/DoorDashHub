import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 1, 20, 106), 
        child: Text(
          "Food Page", 
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          )
        ),
    );
  }
}