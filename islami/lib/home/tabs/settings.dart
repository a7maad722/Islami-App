import 'package:flutter/material.dart';
import 'package:islami/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami/bottom_sheets/theme_bottom_sheet.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/themes/my_themes.dart';
import 'package:provider/provider.dart';

class settingsTab extends StatelessWidget {
  const settingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 33,
                ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isDismissible: true,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return ThemeBottomSheet();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: provider.appTheme == ThemeMode.light
                        ? MyThemes.AppPrimaryColor
                        : MyThemes.AppDarkPrimaryColor,
                    width: 3.5,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Light',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 33,
                ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isDismissible: true,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return LanguageBottomSheet();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: provider.appTheme == ThemeMode.light
                        ? MyThemes.AppPrimaryColor
                        : MyThemes.AppDarkPrimaryColor,
                    width: 3.5,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
