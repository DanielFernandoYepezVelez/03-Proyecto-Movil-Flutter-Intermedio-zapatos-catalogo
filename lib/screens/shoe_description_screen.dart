import 'package:flutter/material.dart';
import 'package:shoes_app/helpers/helpers.dart';

/* Custom Widgets */
import 'package:shoes_app/widgets/widgets.dart';

class ShoeDescriptionScreen extends StatelessWidget {
  const ShoeDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* Estos Helpers Funcionan Para Cambiar Los Colores De Los Elementos Que Aparecen En La Parte Superior Del Telefono */
    changeStatusLight();

    return Scaffold(
      body: Column(
        children: <Widget>[
          const CustomShoeContainerWidget(fullScreen: true),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  CustomShoeDescriptionWidget(
                    title: 'Nike Air Max 720',
                    description:
                        'The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                  ),
                  CustomShoePriceDescriptionWidget(price: 180.0),
                  CustomShoeColorsShadowWidget(),
                  CustomShoeLikeBotonWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
