import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomAppBarWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          // height: 150,
          // color: Colors.red,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Icon(icon, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
