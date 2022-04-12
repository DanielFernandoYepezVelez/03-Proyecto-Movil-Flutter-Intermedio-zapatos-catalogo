import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

/* Custom Widgets */
import 'package:shoes_app/widgets/widgets.dart';

/* Shoe Model (Provider) */
import 'package:shoes_app/models/models.dart';

class CustomShoeColorsShadowWidget extends StatelessWidget {
  const CustomShoeColorsShadowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: const <Widget>[
                Positioned(
                  left: 90,
                  child: _ColorBotons(
                    index: 4,
                    color: Color(0xff364D56),
                    shoeImageUrl: 'assets/images/negro.png',
                  ),
                ),
                Positioned(
                  left: 60,
                  child: _ColorBotons(
                    index: 3,
                    color: Color(0xff2099F1),
                    shoeImageUrl: 'assets/images/azul.png',
                  ),
                ),
                Positioned(
                  left: 30,
                  child: _ColorBotons(
                    index: 2,
                    color: Color(0xffFFAD29),
                    shoeImageUrl: 'assets/images/amarillo.png',
                  ),
                ),
                Positioned(
                  child: _ColorBotons(
                    index: 1,
                    color: Color(0xffC6D642),
                    shoeImageUrl: 'assets/images/verde.png',
                  ),
                ),
              ],
            ),
          ),
          const CustomShoeAddCarWidget(
            height: 30,
            width: 150,
            text: 'More Related Items',
            color: Color(0xffFFC675),
          ),
        ],
      ),
    );
  }
}

class _ColorBotons extends StatelessWidget {
  final int index;
  final Color color;
  final String shoeImageUrl;

  const _ColorBotons({
    Key? key,
    required this.index,
    required this.color,
    required this.shoeImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);

    return FadeInLeft(
      delay: Duration(milliseconds: (index * 100)),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          shoeModel.assetImage = shoeImageUrl;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
