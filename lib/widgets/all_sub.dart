// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:subspace_explore_ui_assignment/utils/strings.dart';
import 'package:subspace_explore_ui_assignment/widgets/text_widget.dart';

class AllSub extends StatelessWidget {
  const AllSub({Key? key}) : super(key: key);

  static const logos = [
    'assets/images/prime.png',
    'assets/images/voot.png',
    'assets/images/link.png',
    'assets/images/sony.png',
    'assets/images/disney.png',
    'assets/images/zee.png',
    'assets/images/uc.png',
    'assets/images/nord.png',
    'assets/images/aha.png',
    'assets/images/story.png',
  ];

  static const service = [
    'Amazon Prime',
    'Voot',
    'Linkedin premium',
    'SonyLiv',
    'Disney+Hotstar',
    'Zee5',
    'Urban Company',
    'Nord VPN',
    'Aha',
    'Storytel',
  ];

  static const price = [
    '149',
    '289.76',
    '599',
    '269',
    '249',
    '339',
    '99',
    '200',
    '169',
    '99',
  ];

  static const offer = [
    '3',
    '17',
    '80',
    '88',
    '75',
    '3',
    '17',
    '80',
    '88',
    '75',
  ];

  static const walls = [
    'assets/images/SitaRamam.png',
    'assets/images/charlie.png',
    'assets/images/l.png',
    'assets/images/gargi.png',
    'assets/images/hod.png',
    'assets/images/Vikrant_Rona.png',
    'assets/images/ucw.png',
    'assets/images/nvp.png',
    'assets/images/jalli.png',
    'assets/images/music.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(3),
        width: double.infinity,
        height: 210,
        decoration: BoxDecoration(
            color: Colors.grey.shade800.withOpacity(0.6),
            borderRadius: BorderRadius.circular(3)),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: logos.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 1,
                ),
                child: Card(
                  margin: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Stack(
                      children: [
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.5)
                                ]).createShader(bounds);
                          },
                          blendMode: BlendMode.darken,
                          child: Image(
                            fit: BoxFit.cover,
                            // height: 150,
                            width: 172,
                            image: AssetImage(walls[index]),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 48,
                              // width: 30,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(4),
                                ),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  children: [
                                    TextWidget(
                                      text: 'UPTO',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    Text(
                                      '${offer[index]} %\nOFF',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 88,
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: ClipOval(
                                child: Image(image: AssetImage(logos[index])),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 10,
                          left: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(text: service[index], fontSize: 15),
                              SizedBox(
                                height: 4,
                              ),
                              TextWidget(
                                text: 'Starting at ₹${price[index]}',
                                fontSize: 15,
                                fontColor: Colors.yellowAccent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
