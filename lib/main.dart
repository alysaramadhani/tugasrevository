import 'package:breeze_memo_responsive/pages/home/home.dart';
import 'package:breeze_memo_responsive/reusables/color_pallettes/breeze_dark.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: BreezeDark.main),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
