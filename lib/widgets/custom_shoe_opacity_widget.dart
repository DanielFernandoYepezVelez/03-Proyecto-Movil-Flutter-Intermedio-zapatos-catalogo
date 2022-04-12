import 'package:flutter/material.dart';

class CustomShoeOpacityWidget extends StatelessWidget {
  const CustomShoeOpacityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 75,
      child: Transform.rotate(
        angle: -0.6,
        child: Container(
          width: 230,
          height: 100,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const <BoxShadow>[
              BoxShadow(blurRadius: 40, color: Color(0XffEAA14E)),
            ],
          ),
        ),
      ),
    );
  }
}
