import 'package:flutter/material.dart';

class GasPage extends StatefulWidget {
  const GasPage({super.key});

  @override
  State<GasPage> createState() => _GasPageState();
}

class _GasPageState extends State<GasPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 106, 8, 1), 
        child: Text(
          "Gas Page", 
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          )
        ),
    );
  }
}