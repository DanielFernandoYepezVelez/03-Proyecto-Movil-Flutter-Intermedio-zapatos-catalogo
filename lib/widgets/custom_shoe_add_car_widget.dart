import 'package:flutter/material.dart';

class CustomShoeAddCarWidget extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? color;

  const CustomShoeAddCarWidget({
    Key? key,
    required this.text,
    this.width = 150,
    this.height = 50,
    this.color = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
