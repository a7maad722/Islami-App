import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Screens/ahadeth_details.dart';
import 'package:islami/models/hadeth_model.dart';
import 'package:islami/providers/hadeethDetailsProvider.dart';
import 'package:provider/provider.dart';

class ahadethTab extends StatefulWidget {
  static const String routeName = 'AhadethTap';

  ahadethTab({super.key});

  @override
  State<ahadethTab> createState() => _ahadethTabState();
}

class _ahadethTabState extends State<ahadethTab> {
  List<HadethModel> allAhadeeth = [];
  @override
  void initState() {
    super.initState();
    loadAhadeeth();
  }

  @override
  Widget build(BuildContext context) {
    // if(allAhadeeth.isEmpty){
    //   loadAhadeeth();
    // }
    return ChangeNotifierProvider(
      create: (context) => Hadeethdetailsprovider(),
      builder: (context, child) {
        var provider = Provider.of<Hadeethdetailsprovider>(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/hadeth_logo.png',
              height: 227,
              // width: 205,
            ),
            const Divider(),
            Text('HadeethName'.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge),
            const Divider(),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AhadethDetails.routeName,
                          arguments: allAhadeeth[index]);
                    },
                    child: Text(
                      allAhadeeth[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: allAhadeeth.length,
              ),
            )
          ],
        );
      },
    );
  }

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
        setState(() {});
      }
    });
  }
}
