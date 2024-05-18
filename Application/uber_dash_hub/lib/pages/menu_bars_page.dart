import 'package:flutter/material.dart';
import 'package:uber_dash_hub/pages/food_page.dart';
import 'package:uber_dash_hub/pages/gas_page.dart';
import 'package:uber_dash_hub/pages/profile_page.dart';
import 'package:uber_dash_hub/pages/stats_page.dart';

class MenuBarsPage extends StatefulWidget {
  const MenuBarsPage({super.key});

  @override
  State<MenuBarsPage> createState() => _MenuBarsPageState();
}

class _MenuBarsPageState extends State<MenuBarsPage> {

  int _selectedIndex = 0; 

  final List _pages = [
    const FoodPage(), 
    const GasPage(), 
    const StatsPage(), 
    const ProfilePage(),
  ];

  void navigateBottomBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text("Uber Dash Hub"),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () => {Navigator.popAndPushNamed(context, "/settingspage")},
              ), 

              ListTile(
                leading: const Icon(Icons.person_rounded),
                title: const Text("Profile"),
                onTap: () => {Navigator.popAndPushNamed(context, "/profilepage")},
              ), 
            ],
          ),
        )
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Theme.of(context).primaryColorLight,
        selectedItemColor: Theme.of(context).secondaryHeaderColor,

        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_rounded),
            label: "Delivery",
          ),
          
          BottomNavigationBarItem(
              icon: Icon(Icons.local_gas_station_rounded),
              label: "Gas"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined_rounded),
              label: "Stats"
          ),
        ],
      ),
    );
  }
}