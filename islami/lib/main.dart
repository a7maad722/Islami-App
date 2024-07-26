import 'package:flutter/material.dart';
import 'package:islami/Screens/ahadeth_details.dart';
import 'package:islami/Screens/suraDetails.dart';
import 'package:islami/home/home.dart';
import 'package:islami/home/tabs/ahadeth.dart';
import 'package:islami/themes/my_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyThemes.lightTheme,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ahadethTab.routeName: (context) => ahadethTab(),
        SuraDetails.routeName: (context) => SuraDetails(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
    );
  }
}
