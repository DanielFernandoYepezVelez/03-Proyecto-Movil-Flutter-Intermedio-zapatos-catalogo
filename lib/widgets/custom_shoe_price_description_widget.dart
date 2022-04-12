import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

/* Custom Widgets */
import 'package:shoes_app/widgets/widgets.dart';

class CustomShoePriceDescriptionWidget extends StatelessWidget {
  final double price;

  const CustomShoePriceDescriptionWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
        right: 15,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '\$$price',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Bounce(
            from: 8,
            delay: const Duration(seconds: 1),
            child: const CustomShoeAddCarWidget(
              text: 'Buy Now',
              height: 40,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}
