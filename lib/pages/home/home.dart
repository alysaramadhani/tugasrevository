import 'package:breeze_memo_responsive/pages/home/views/phone.dart';
import 'package:breeze_memo_responsive/pages/home/views/tablet.dart';
import 'package:breeze_memo_responsive/reusables/color_pallettes/breeze_dark.dart';
import 'package:breeze_memo_responsive/reusables/components/notes.dart';
import 'package:breeze_memo_responsive/reusables/extension/gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetResponsiveView {
  HomePage({super.key})
      : super(
            settings: const ResponsiveScreenSettings(
          desktopChangePoint: 1000,
          tabletChangePoint: 640,
        ));

  @override
  Widget phone() {
    return const HomePhone();
  }

  @override
  Widget tablet() {
    return const HomeTablet();
  }

  @override
  Widget desktop() {
    return Container(
      color: BreezeDark.main,
      child: Center(
        child: Text(
          "Developer malas mendesain desktop, itu dua contoh hp sama tablet dah cukup kan?\nKan?",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
              color: BreezeDark.background),
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Container(
//         color: BreezeDark.carddark,
//         width: MediaQuery.of(context).size.width / 1.2,
//       ),
//       appBar: AppBar(
//         backgroundColor: BreezeDark.background,
//         foregroundColor: BreezeDark.white,
//         title: const Text("Notes"),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search),
//           )
//         ],
//       ),
//       body: Container(
//         color: BreezeDark.background,
//       ),
//     );
//   }
// }
