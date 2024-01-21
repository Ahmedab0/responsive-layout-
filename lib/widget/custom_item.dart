import 'package:flutter/material.dart';
class CustomItem extends StatelessWidget {

  double? width;
  double? height;
  Color? clr;

  CustomItem({this.width, this.height, this.clr, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}