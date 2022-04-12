import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Shoe Model (Provider) */
import 'package:shoes_app/models/models.dart';

class CustomShoeSizeWidget extends StatelessWidget {
  const CustomShoeSizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 365,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            _BoxSizeShoeWidget(number: 7),
            _BoxSizeShoeWidget(number: 7.5),
            _BoxSizeShoeWidget(number: 8),
            _BoxSizeShoeWidget(number: 8.5),
            _BoxSizeShoeWidget(number: 9),
            _BoxSizeShoeWidget(number: 9.5),
          ],
        ),
      ),
    );
  }
}

//** Widget Personalizado Que Hace Parte Del Widget Padre CustomShoeSizeWidget() */

class _BoxSizeShoeWidget extends StatelessWidget {
  final double number;

  const _BoxSizeShoeWidget({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);

    return GestureDetector(
      onTap: () {
        shoeModel.talla = number;
      },
      child: Container(
        width: 40,
        height: 40,
        child: Text(
          number.toString().replaceAll('.0', ''),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: (number == shoeModel.talla)
                ? Colors.white
                : const Color(0xffF1A23A),
          ),
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: (number == shoeModel.talla)
              ? const Color(0xffF1A23A)
              : Colors.white,
          boxShadow: <BoxShadow>[
            if (number == shoeModel.talla)
              const BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 5),
                color: Color(0xffF1A23A),
              ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
