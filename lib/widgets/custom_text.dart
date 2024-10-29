import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
   CustomText({super.key, required this.data, required this.fontsize,this.height = 1, required this.fontWeight, required this.color});
  final String data;
  final double fontsize;
  double height;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
        data,
      softWrap: true,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
        height: height,
        overflow: TextOverflow.fade,

      ),
    );
  }
}
