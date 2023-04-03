import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';

class PositionnedElement extends StatelessWidget {
  const PositionnedElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        image: DecorationImage(
          image: AssetImage(Config.asset.backgrougImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
