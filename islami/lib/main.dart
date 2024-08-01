// import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/Screens/ahadeth_details.dart';
import 'package:islami/Screens/suraDetails.dart';
import 'package:islami/home/home.dart';
import 'package:islami/home/tabs/ahadeth.dart';
import 'package:islami/providers/my_provider.dart';
// import 'package:islami/providers/suraDetailsProvider.dart';
import 'package:islami/themes/my_themes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path:
          'assets/translation', // <-- change the path of the translation files
      // fallbackLocale: Locale('en', 'US'),
      child: MultiProvider(
        child: MyApp(),
        providers: [
          ChangeNotifierProvider(create: (context) => MyProvider()),
          // ChangeNotifierProvider(create: (context) => SuraDetailsProvider()),
        ],
      )));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: provider.appTheme,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ahadethTab.routeName: (context) => ahadethTab(),
        SuraDetails.routeName: (context) => SuraDetails(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
    );
  }
}
