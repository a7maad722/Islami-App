import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/hadeth_model.dart';

class Hadeethdetailsprovider extends ChangeNotifier {
  List<HadethModel> allAhadeeth = [];
  loadAhadeeth() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> ahadeth = value.split('#');
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeethOne = ahadeth[i];
        List<String> hadethLines = hadeethOne.trim().split('\n');
        String hadethTitle = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        HadethModel hadethModel = HadethModel(hadethTitle, hadethContent);
        allAhadeeth.add(hadethModel);
      }
    });
  }
}
