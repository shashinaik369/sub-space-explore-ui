import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  FontWeight? fontWeight;
  double fontSize;
  Color? fontColor;
  TextOverflow? overflow;
  int? maxLines;
  TextWidget(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.fontWeight,
      this.overflow,
      this.maxLines,
      this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        letterSpacing: 0,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}
