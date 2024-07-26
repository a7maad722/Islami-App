import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadeth.dart';
import 'package:islami/home/tabs/quran.dart';
import 'package:islami/home/tabs/radio.dart';
import 'package:islami/home/tabs/sebha.dart';
import 'package:islami/home/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: width,
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text(
              'Isalmi',
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_quran.png"),
                    size: 45,
                  ),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_hadeth.png"),
                    size: 35,
                  ),
                  label: 'Hadeeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_sebha.png"),
                    size: 35,
                  ),
                  label: 'Sebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_radio.png"),
                    size: 35,
                  ),
                  label: 'Radio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 35,
                  ),
                  label: 'Settings',
                ),
              ]),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    ahadethTab(),
    sebhaTab(),
    radioTab(),
    settingsTab(),
  ];
}
