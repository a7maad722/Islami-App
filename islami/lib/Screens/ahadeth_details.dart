import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/hadeth_model.dart';

class AhadethDetails extends StatefulWidget {
  AhadethDetails({super.key});
  static const String routeName = 'hadeethDetails';

  @override
  State<AhadethDetails> createState() => _AhadethDetailsState();
}

class _AhadethDetailsState extends State<AhadethDetails> {
  // ignore: unused_field
  static const String routetName = 'hadeth details';
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
          )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            model.title,
          ),
        ),
        body: Card(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(248, 248, 248, 15),
                )),
            margin: const EdgeInsets.all(15),
            color: const Color.fromRGBO(248, 248, 248, 15),
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
                          model.title,
                          style: GoogleFonts.inter(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff242424),
                          ),
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
                          model.content[index],
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        );
                      },
                      itemCount: model.content.length,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
