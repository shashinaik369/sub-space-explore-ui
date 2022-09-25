// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:subspace_explore_ui_assignment/utils/strings.dart';

import 'text_widget.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800.withOpacity(0.6),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: Strings.whatDoYouWant,
              fontSize: 19,
            ),
            SizedBox(
              height: 14,
            ),
            TextWidget(
              text: Strings.suggest,
              fontSize: 12,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 280,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.2)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14, top: 14),
                    child: TextWidget(
                      text: Strings.giveYourSug,
                      fontSize: 16,
                      fontColor: Strings.whiteColor.withOpacity(0.6),
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.send),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
