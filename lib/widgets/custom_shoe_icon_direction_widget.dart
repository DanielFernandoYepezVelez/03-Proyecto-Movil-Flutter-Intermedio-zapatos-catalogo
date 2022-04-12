import 'package:flutter/material.dart';
import 'package:shoes_app/helpers/helpers.dart';

class CustomShoeIconDirectionWidget extends StatelessWidget {
  const CustomShoeIconDirectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      child: FloatingActionButton(
        elevation: 0,
        highlightElevation: 0,
        backgroundColor: Colors.transparent,
        child: const Icon(Icons.chevron_left, color: Colors.white, size: 60),
        onPressed: () {
          //* Estos Helpers Funcionan Para Cambiar Los Colores De Los Elementos Que Aparecen En La Parte Superior Del Telefono */
          changeStatusDark();
          Navigator.pop(context);
        },
      ),
    );
  }
}
