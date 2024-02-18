import 'package:breeze_memo_responsive/reusables/color_pallettes/breeze_dark.dart';
import 'package:breeze_memo_responsive/reusables/extension/gap.dart';
import 'package:flutter/material.dart';

class MyNoteVertical extends StatelessWidget {
  const MyNoteVertical({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: BreezeDark.card,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: TextStyle(color: BreezeDark.white, fontSize: 16),
              ),
              const Spacer(),
              Text(
                "Local",
                style: TextStyle(color: BreezeDark.disabled, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            text ??
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
            style: TextStyle(color: BreezeDark.semiwhite),
          ),
        ],
      ),
    );
  }
}

class MyNoteHorizontal extends StatelessWidget {
  const MyNoteHorizontal({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          width: 240,
          decoration: BoxDecoration(
            color: BreezeDark.card,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(color: BreezeDark.white, fontSize: 16),
                  ),
                  const Spacer(),
                  Text(
                    "Local",
                    style: TextStyle(color: BreezeDark.disabled, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                text ??
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
                style: TextStyle(color: BreezeDark.semiwhite),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LabeledListview extends StatelessWidget {
  const LabeledListview(
      {super.key, required this.children, required this.label});

  final List<Widget> children;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: BreezeDark.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: BreezeDark.disabled),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: children.withSpaceBetween(height: 10),
          ),
        ].withSpaceBetween(height: 10),
      ),
    );
  }
}
