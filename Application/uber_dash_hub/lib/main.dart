import 'package:flutter/material.dart';
import 'package:uber_dash_hub/pages/food_page.dart';
import 'package:uber_dash_hub/pages/gas_page.dart';
import 'package:uber_dash_hub/pages/menu_bars_page.dart';
import 'package:uber_dash_hub/pages/profile_page.dart';
import 'package:uber_dash_hub/pages/settings_page.dart';
import 'package:uber_dash_hub/pages/stats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MenuBarsPage(),
      theme: ThemeData.dark(), // default theme, can be changed later
      routes: {
        '/menubarspage': (context) => const MenuBarsPage(),
        '/foodpage': (context) => const FoodPage(),
        '/gaspage': (context) => const GasPage(),
        '/statspage': (context) => const StatsPage(),
        '/profilepage': (context) => const ProfilePage(),
        '/settingspage': (context) => const SettingsPage(),
      }
    );
  }
}
