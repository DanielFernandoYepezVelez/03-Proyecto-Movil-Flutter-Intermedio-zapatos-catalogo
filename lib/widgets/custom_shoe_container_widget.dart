import 'package:flutter/material.dart';

/* Custom Widgets */
import 'package:shoes_app/widgets/widgets.dart';

/* Screens */
import 'package:shoes_app/screens/screens.dart';

class CustomShoeContainerWidget extends StatelessWidget {
  final bool? fullScreen;

  const CustomShoeContainerWidget({
    Key? key,
    this.fullScreen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullScreen!) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ShoeDescriptionScreen(),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: fullScreen! ? 5 : 5,
          horizontal: fullScreen! ? 5 : 30,
        ),
        child: Container(
          height: fullScreen! ? 380 : 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffFFCF53),
            borderRadius: !fullScreen!
                ? BorderRadius.circular(50)
                : const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  if (fullScreen!) const CustomShoeIconDirectionWidget(),
                  const CustomShoeOpacityWidget(),
                  const CustomShoeImageWidget(),
                  if (!fullScreen!) const CustomShoeSizeWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
