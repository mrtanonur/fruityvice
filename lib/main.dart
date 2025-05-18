import 'package:flutter/material.dart';
import 'package:fruityvice/pages/main_page.dart';
import 'package:fruityvice/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:fruityvice/providers/fruit_provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => FruitProvider()),
      ChangeNotifierProvider(create: (context) => SettingsProvider())
    ], child: const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: context.watch<SettingsProvider>().isDark
            ? ThemeData.dark()
            : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: const MainPage());
  }
}
