import 'package:flutter/material.dart';
import 'package:islami/themes/my_themes.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 20.0,
              right: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: MyThemes.AppPrimaryColor,
                      ),
                ),
                Icon(
                  Icons.done_rounded,
                  size: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: MyThemes.AppPrimaryColor,
                      ),
                ),
                Icon(
                  Icons.done_rounded,
                  size: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
