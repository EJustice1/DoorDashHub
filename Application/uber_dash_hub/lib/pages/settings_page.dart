import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Uber Dash Hub"),),
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 106, 1, 94), 
        child: Text(
          "Settings Page", 
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          )
        ),
    );
  }
}