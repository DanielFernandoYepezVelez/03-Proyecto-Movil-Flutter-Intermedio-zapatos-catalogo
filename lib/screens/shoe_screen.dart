import 'package:flutter/material.dart';
import 'package:shoes_app/helpers/helpers.dart';

/* Custom Widgets */
import 'package:shoes_app/widgets/widgets.dart';

class ShoeScreen extends StatelessWidget {
  const ShoeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* Estos Helpers Funcionan Para Cambiar Los Colores De Los Elementos Que Aparecen En La Parte Superior Del Telefono */
    changeStatusDark();

    return Scaffold(
      body: Column(
        children: <Widget>[
          const CustomAppBarWidget(
            text: 'For You',
            icon: Icons.search_outlined,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const <Widget>[
                  CustomShoeContainerWidget(),
                  CustomShoeDescriptionWidget(
                    title: 'Nike Air Max 720',
                    description:
                        'The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                  ),
                ],
              ),
            ),
          ),
          const CustomShoePriceWidget(price: 180.0),
        ],
      ),
    );
  }
}
