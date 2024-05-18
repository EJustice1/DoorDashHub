import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Uber Dash Hub"),),
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 106, 78, 1), 
        child: Text(
          "Profile Page", 
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          )
        ),
    );
  }
}