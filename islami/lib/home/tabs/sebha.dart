import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sebhaTab extends StatefulWidget {
  sebhaTab({super.key});

  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int numOfTasbeh = 0;
  int index = 0;
  double angle = 0;
  List<String> tasbeh = [
    'سبحان الله',
    'الله اكبر',
    'لا اله الا الله',
    'الحمد الله',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Image.asset('assets/images/head_sebha_logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 77),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    child: Image.asset('assets/images/body_sebha_logo.png'),
                    onTap: onClicked,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'عدد التسبيحات',
              textAlign: TextAlign.center,
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffB7935F),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25)),
            width: 69,
            height: 81,
            child: Center(
              child: Text(
                '$numOfTasbeh',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 27),
            decoration: BoxDecoration(
                color: Color(0xffB7935F),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25)),
            width: 137,
            height: 51,
            child: Center(
              child: Text(
                '${tasbeh[index]}',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onClicked() {
    angle += 15;
    if (numOfTasbeh < 33) {
      numOfTasbeh++;
    } else {
      numOfTasbeh = 0;
    }
    if (index <= 3 && numOfTasbeh == 0) {
      index++;
    }
    if (index == tasbeh.length) {
      index = 0;
    }
    setState(() {});
  }
}
