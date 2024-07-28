import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/suramodel.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/providers/suraDetailsProvider.dart';
import 'package:islami/themes/my_themes.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  SuraDetails({super.key});
  static const String routeName = 'SuraDetails';

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    // ignore: non_constant_identifier_names
    var ThemeProvider = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider(),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);
        if (provider.verses.isEmpty) {
          provider.loadFileSura(model.index);
        }
        return Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: ThemeProvider.appTheme == ThemeMode.light
                    ? AssetImage('assets/images/default_bg.png')
                    : AssetImage('assets/images/dark_bg.png'),
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
                    color: ThemeProvider.appTheme == ThemeMode.light
                        ? Color(0xffF8F8F8)
                        : MyThemes.AppDarkPrimaryColor,
                  ),
                ),
                margin: EdgeInsets.all(15),
                color: ThemeProvider.appTheme == ThemeMode.light
                    ? Color(0xffF8F8F8)
                    : MyThemes.AppDarkPrimaryColor,
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
                              color: Color(0xff141A2E),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'سورة ${model.name}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: ThemeProvider.appTheme ==
                                              ThemeMode.light
                                          ? Colors.black
                                          : Color(0xff141A2E)),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        endIndent: 50,
                        color: Color(0xff141A2E),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Text(
                              '﴾${index + 1}﴿${provider.verses[index]}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: ThemeProvider.appTheme ==
                                            ThemeMode.light
                                        ? Colors.black
                                        : Color(0xff141A2E),
                                  ),
                              textAlign: TextAlign.center,
                            );
                          },
                          itemCount: provider.verses.length,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        );
      },
    );
  }
}
