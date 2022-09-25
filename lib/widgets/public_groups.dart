// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:subspace_explore_ui_assignment/utils/strings.dart';
import 'package:subspace_explore_ui_assignment/widgets/text_widget.dart';

class PublicGroup extends StatelessWidget {
  PublicGroup({Key? key}) : super(key: key);

  List<double> pbar = [120.3, 320, 250.5, 200, 100, 280, 90, 150, 222, 111];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      // border: Border(
                      //   top: BorderSide(
                      //     color: Colors.green,
                      //     width: 5,
                      //   ),
                      // ),
                      color: Colors.grey.shade800.withOpacity(0.6),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10, top: 20, bottom: 20, right: 8),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipOval(
                              child: Image(
                                  image:
                                      AssetImage('assets/images/spotify.png')),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                text: 'Spotify Family Plan-1 Month',
                                fontSize: 15,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextWidget(
                                text: 'by Saurabh Jain',
                                fontSize: 12,
                                maxLines: 1,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextWidget(
                                text: '5 / 6 friends sharing',
                                fontSize: 15,
                                fontColor: Colors.lightBlue,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              TextWidget(
                                  text: '₹ 40 / User / Month', fontSize: 12),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 40),
                                  child: TextWidget(
                                    text: 'Join',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 7.5),
                      child: TextWidget(
                        text: '34+ groups',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 34,
                    bottom: 17,

                    // color: Strings.whiteColor,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Strings.whiteColor,
                    ),
                  ),
                  Positioned(
                    left: 35,
                    bottom: 18,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage('assets/images/music.png'),
                    ),
                  ),
                  // Positioned(
                  //   // bottom: 5,

                  //   child: Container(
                  //     height: 1,
                  //     color: Colors.lightBlue,
                  //   ),
                  // ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 350,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: pbar[index],
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
