import 'package:flutter/material.dart';
import 'package:subspace_explore_ui_assignment/utils/strings.dart';

import 'text_widget.dart';

Widget allSubsHead(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextWidget(
          text: text,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontColor: Strings.whiteColor.withOpacity(0.4),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 5.0),
          decoration: BoxDecoration(
              color: Strings.whiteColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5)),
          child: TextWidget(
            fontSize: 15,
            text: Strings.seeMore,
            fontColor: Colors.yellowAccent,
          ),
        )
      ],
    ),
  );
}
