import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class radioTab extends StatelessWidget {
  const radioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            'Islamic Quran Radio',
            textAlign: TextAlign.center,
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous_rounded,
                    size: 45,
                  )),
              const SizedBox(
                width: 40,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    size: 45,
                    Icons.play_arrow_rounded,
                  )),
              const SizedBox(
                width: 40,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    size: 45,
                    Icons.skip_next_rounded,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
