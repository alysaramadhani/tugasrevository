import 'package:breeze_memo_responsive/reusables/color_pallettes/breeze_dark.dart';
import 'package:breeze_memo_responsive/reusables/components/buttons.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BreezeDark.carddark,
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(8),
      width: 300,
      child: const SafeArea(
          child: Column(
        children: [
          IconTextButton(isSelected: true, text: "Notes"),
          IconTextButton(icon: Icons.category, text: "Categories",),
        ],
      )),
    );
  }
}
