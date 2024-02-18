import 'package:breeze_memo_responsive/pages/home/components/drawer.dart';
import 'package:breeze_memo_responsive/reusables/color_pallettes/breeze_dark.dart';
import 'package:breeze_memo_responsive/reusables/components/buttons.dart';
import 'package:breeze_memo_responsive/reusables/components/notes.dart';
import 'package:breeze_memo_responsive/reusables/extension/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePhone extends StatelessWidget {
  const HomePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
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
        color: BreezeDark.background,
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            LabeledListview(label: "Pinned", children: [
              MyNoteVertical(),
            ]),
            LabeledListview(label: "Others", children: [
              MyNoteVertical(
                  text:
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio"),
            ])
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: BreezeDark.carddark,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: 'Open navigation menu',
                color: BreezeDark.white,
                icon: const Icon(Icons.check_box_outlined),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Search',
                color: BreezeDark.white,
                icon: const Icon(Icons.image_outlined),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                color: BreezeDark.white,
                icon: const Icon(Icons.people_alt_outlined),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(
                tooltip: 'Favorite',
                color: BreezeDark.main,
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
