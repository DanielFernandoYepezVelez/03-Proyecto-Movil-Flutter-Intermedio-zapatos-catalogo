import 'package:flutter/material.dart';

/* Custom Widgets */
import 'package:shoes_app/widgets/widgets.dart';

class CustomShoePriceWidget extends StatelessWidget {
  final double price;

  const CustomShoePriceWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.10),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // const SizedBox(height: 20),
            Text(
              '\$$price',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const CustomShoeAddCarWidget(text: 'Add To Car'),
          ],
        ),
      ),
    );
  }
}
