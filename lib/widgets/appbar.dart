// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:subspace_explore_ui_assignment/utils/strings.dart';

import 'gradient.dart';
import 'text_widget.dart';

AppBar appBar() {
  return AppBar(
    elevation: 1,
    backgroundColor: Color(0xff1b1b1b),
    title: TextWidget(
      text: Strings.explore,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    actions: [
      CircleAvatar(
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.redeem,
          color: Strings.whiteColor,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      CircleAvatar(
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.shopping_cart,
          color: Strings.whiteColor,
        ),
      ),
      SizedBox(
        width: 15,
      ),
    ],
  );
}

Widget playandearn() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 14.0,
    ),
    child: Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff003153),
              Color(0xff58779f),
            ],
          ),
          border: Border.all(width: 2, color: Colors.grey.withOpacity(0.6)),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              height: 30,
              width: 30,
              child: Image(image: AssetImage(Strings.goldCoin))),
          TextWidget(
            fontSize: 22,
            text: Strings.playAndEarnCoins,
            fontWeight: FontWeight.w600,
          ),
          Icon(Icons.double_arrow),
        ],
      ),
    ),
  );
}

class ShowAllGroups extends StatefulWidget {
  const ShowAllGroups({Key? key}) : super(key: key);

  @override
  State<ShowAllGroups> createState() => _ShowAllGroupsState();
}

class _ShowAllGroupsState extends State<ShowAllGroups> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 14.0,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        // decoration: BoxDecoration(
        //     border: Border.all(width: 3.2, color: animation!.value),
        //     borderRadius: BorderRadius.circular(6)),
        child: UnicornOutlineButton(
          strokeWidth: 2,
          radius: 6,
          gradient:
              LinearGradient(colors: [Colors.red, Colors.white, Colors.green]),
          child: TextWidget(
            text: Strings.showAllPublicGroups,
            fontSize: 16,
            fontColor: Strings.whiteColor.withOpacity(0.6),
          ),
          onPressed: () {},
        ),
        // TextWidget(text: Strings.showAllPublicGroups, fontSize: 14),
      ),
    );
  }
}

// class ShowAllGroups extends StatefulWidget {
//   const ShowAllGroups({Key? key}) : super(key: key);

//   @override
//   State<ShowAllGroups> createState() => _ShowAllGroupsState();
// }

// class _ShowAllGroupsState extends State<ShowAllGroups>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation _colorTween;

//   @override
//   void initState() {
//     _animationController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 100));
//     _colorTween = ColorTween(begin: Colors.red, end: Colors.green)
//         .animate(_animationController);
//     changeColors();
//     super.initState();
//   }

//   Future changeColors() async {
//     while (true) {
//       await new Future.delayed(const Duration(seconds: 100), () {
//         if (_animationController.status == AnimationStatus.completed) {
//           _animationController.reverse();
//         } else {
//           _animationController.forward();
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         AnimatedBuilder(
//           animation: _colorTween,
//           // child: Container(
//           //   height: 30,
//           //   width: double.infinity,
//           //   decoration: BoxDecoration(
//           //       shape: BoxShape.rectangle, color: _colorTween.value
//           //       // gradient: LinearGradient(
//           //       //   colors: [Colors.red, Colors.purple],
//           //       // ),
//           //       ),
//           // ),
//           builder: (BuildContext context, child) {
//             return Container(
//               height: 50,
//               color: _colorTween.value,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(6),
//               ),
//             );
//           },
//         ),
//         Padding(
//           padding: const EdgeInsets.all(2.0),
//           child: Container(
//             height: 46,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(6), color: Colors.red),
//           ),
//         ),
//       ],
//     );
//   }
// }
