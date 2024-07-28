import 'package:flutter/material.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/themes/my_themes.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          color: provider.appTheme == ThemeMode.light
              ? Color(0xffB7935F)
              : Color(0xff141A2E),
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
                InkWell(
                  onTap: () {
                    provider.changeTheme(ThemeMode.light);
                  },
                  child: Text(
                    'Light',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                Icon(
                  Icons.done_rounded,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    provider.changeTheme(ThemeMode.dark);
                  },
                  child: Text(
                    'Dark',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                Icon(
                  Icons.done_rounded,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
