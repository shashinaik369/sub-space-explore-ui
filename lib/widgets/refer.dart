// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:subspace_explore_ui_assignment/utils/strings.dart';
import 'package:subspace_explore_ui_assignment/widgets/text_widget.dart';

class ReferList extends StatelessWidget {
  const ReferList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<LinearGradient> color = [
      LinearGradient(colors: [Colors.pink.shade400, Colors.blue.shade400]),
      LinearGradient(colors: [Colors.deepPurple, Colors.deepPurple.shade200]),
      LinearGradient(colors: [
        Color.fromARGB(255, 2, 2, 116),
        Color.fromARGB(255, 46, 66, 217)
      ]),
    ];

    List<String> headings = [
      'Refer & Earn ₹50',
      'CRAFTED WITH❤️\nBY STUDENTS\nOF IIT MADRAS',
      'SAVE MONEY',
    ];

    List<String> subHead = [
      'When your friends use your referral\ncode to place their first order,you\'ll\nboth get 50% off upto Rs 50.It\'s a\nWin-Win😍',
      'We need your support to grow,if you\nlike our app, then please give us a\nreview on Playstore.',
      'Thanks for installing our app\nSave money by buying together and\nGet all pro and premium features',
    ];

    List<String> assets = [
      'assets/images/3dmegaphone.png',
      'assets/images/3dlove.png',
      'assets/images/3dpayless.png'
    ];

    return CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 16 / 8,
        viewportFraction: 1,
        autoPlay: true,
      ),
      itemCount: 3,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            gradient: color[itemIndex],
            border: Border.all(color: Colors.grey.withOpacity(0.5))),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 25, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: headings[itemIndex],
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                    text: subHead[itemIndex],
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                  )
                ],
              ),
            ),
            Positioned(
                right: 2,
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image(image: AssetImage(assets[itemIndex])),
                ))
          ],
        ),
      ),
    );
  }
}
