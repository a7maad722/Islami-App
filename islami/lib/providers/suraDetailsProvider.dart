import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier {
  List<String> verses = [];

  loadFileSura(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    // ignore: non_constant_identifier_names
    List<String> SuraLines = sura.split('\n');
    verses = SuraLines;
    notifyListeners();
  }
}
