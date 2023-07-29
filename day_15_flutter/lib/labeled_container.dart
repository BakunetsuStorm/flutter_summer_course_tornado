import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  double? width;
  double? height;
  final Color color;
  final String text;
  Color? textcolor;

  LabeledContainer(
      {Key? key,
      this.width,
      this.height = double.infinity,
      required this.color,
      required this.text,
      this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.red, fontSize: 20),


        ),
      ),
    );
  }
}
