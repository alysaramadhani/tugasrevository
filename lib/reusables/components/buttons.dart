import 'package:breeze_memo_responsive/reusables/color_pallettes/breeze_dark.dart';
import 'package:breeze_memo_responsive/reusables/extension/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton(
      {super.key, this.isSelected, this.icon, required this.text});

  final String text;
  final bool? isSelected;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return isSelected == true
        ? Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: BreezeDark.card,
              borderRadius: BorderRadius.circular(1000),
            ),
            child: Row(
              children: [
                icon != null
                    ? Icon(icon, color: BreezeDark.white)
                    : SvgPicture.asset(
                        "assets/icons/final_light.svg",
                      ),
                Text(
                  text,
                  style: TextStyle(color: BreezeDark.white),
                )
              ].withSpaceBetween(width: 10),
            ),
          )
        : TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000)),
              padding: const EdgeInsets.all(14),
              backgroundColor: BreezeDark.carddark,
              foregroundColor: BreezeDark.semiwhite,
            ),
            child: Row(
              children: [
                icon != null
                    ? Icon(icon, color: BreezeDark.semiwhite)
                    : SvgPicture.asset(
                        "assets/icons/final_light.svg",
                      ),
                Text(
                  text,
                  style: TextStyle(
                      color: BreezeDark.semiwhite,
                      fontWeight: FontWeight.normal),
                )
              ].withSpaceBetween(width: 10),
            ),
          );
  }
}
