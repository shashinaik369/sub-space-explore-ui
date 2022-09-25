// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:subspace_explore_ui_assignment/utils/strings.dart';
import 'package:subspace_explore_ui_assignment/widgets/all_sub.dart';
import 'package:subspace_explore_ui_assignment/widgets/animated_builder.dart';
import 'package:subspace_explore_ui_assignment/widgets/feedback.dart';
import 'package:subspace_explore_ui_assignment/widgets/heading.dart';
import 'package:subspace_explore_ui_assignment/widgets/appbar.dart';
import 'package:subspace_explore_ui_assignment/widgets/public_groups.dart';
import 'package:subspace_explore_ui_assignment/widgets/refer.dart';
import 'package:subspace_explore_ui_assignment/widgets/text_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: 1850, //1600,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                playandearn(),
                ReferList(),
                SizedBox(
                  height: 10,
                ),
                allSubsHead(Strings.allSubscriptions),
                AllSub(),
                allSubsHead(Strings.publicGroups),
                SizedBox(
                  height: 15,
                ),
                PublicGroup(),
                ShowAllGroups(),
                SizedBox(
                  height: 15,
                ),
                FeedBack(),
                // AllSub(),
                // AllSub(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
