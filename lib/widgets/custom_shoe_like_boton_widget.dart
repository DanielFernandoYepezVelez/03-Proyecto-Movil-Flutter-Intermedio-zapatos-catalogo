import 'package:flutter/material.dart';

class CustomShoeLikeBotonWidget extends StatelessWidget {
  const CustomShoeLikeBotonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const _BoxShadowBoton(
          icon: Icon(Icons.star, size: 25, color: Colors.red),
        ),
        _BoxShadowBoton(
          icon: Icon(
            size: 25,
            Icons.add_shopping_cart,
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
        _BoxShadowBoton(
          icon: Icon(
            size: 25,
            Icons.settings,
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}

class _BoxShadowBoton extends StatelessWidget {
  final Icon icon;

  const _BoxShadowBoton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      child: icon,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 5,
            offset: Offset(0, 10),
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
