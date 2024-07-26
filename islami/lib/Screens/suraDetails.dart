import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/suramodel.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});
  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFileSura(model.index);
    }
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
          )),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            model.name,
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Card(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Color.fromRGBO(248, 248, 248, 15),
                )),
            margin: EdgeInsets.all(15),
            color: Color.fromRGBO(248, 248, 248, 15),
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        const ImageIcon(
                          AssetImage(
                            'assets/images/Icon awesome-play-circle.png',
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'سورة ${model.name}',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 50,
                    endIndent: 50,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          '﴾${index + 1}﴿${verses[index]}',
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        );
                      },
                      itemCount: verses.length,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  loadFileSura(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> SuraLines = sura.split('\n');
    verses = SuraLines;
    setState(() {});
  }
}
