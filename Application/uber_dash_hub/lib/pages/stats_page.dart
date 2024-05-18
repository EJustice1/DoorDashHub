import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 1, 106, 25), 
        child: Text(
          "Stats Page", 
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          )
        ),
    );
  }
}