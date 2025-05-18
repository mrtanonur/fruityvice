import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruityvice/main.dart';
import 'package:fruityvice/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Koyu tema",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  nativeSwitch(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget nativeSwitch(BuildContext context) {
  if (Platform.isAndroid) {
    return Switch(
      value: context.watch<SettingsProvider>().isDark,
      onChanged: (bool value) {
        context.read<SettingsProvider>().change(value);
        //print(context.read<SettingsProvider>().isDark);
      },
    );
  } else {
    return CupertinoSwitch(
      value: context.watch<SettingsProvider>().isDark,
      onChanged: (bool value) {
        context.read<SettingsProvider>().change(value);
      },
    );
  }
}
