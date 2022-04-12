import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Shoe Model (Provider) */
import 'package:shoes_app/models/models.dart';

class CustomShoeImageWidget extends StatelessWidget {
  const CustomShoeImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);

    return SizedBox(
      height: 370,
      // color: Colors.blue,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Image(
          image: AssetImage(shoeModel.assetImage),
        ),
      ),
    );
  }
}
