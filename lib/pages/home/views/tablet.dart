import 'package:breeze_memo_responsive/reusables/color_pallettes/breeze_dark.dart';
import 'package:breeze_memo_responsive/reusables/components/notes.dart';
import 'package:breeze_memo_responsive/reusables/extension/gap.dart';
import 'package:flutter/material.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: BreezeDark.carddark,
        width: 300,
      ),
      appBar: AppBar(
        backgroundColor: BreezeDark.background,
        foregroundColor: BreezeDark.white,
        title: const Text("Notes"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: BreezeDark.background,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            MyNoteHorizontal(
                text:
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio"),
            MyNoteHorizontal(),
          ].withSpaceBetween(width: 10),
        ),
      ),
    );
  }
}
