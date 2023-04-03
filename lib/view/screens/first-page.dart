import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/screens/auth/login-page.dart';
import 'package:restaurant_app_yaya_food/view/widgets/button.dart';
import 'package:restaurant_app_yaya_food/view/widgets/positionned-element.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -height(context) * 0.33,
            left: -width(context) * 0.5,
            child: const PositionnedElement(),
          ),
          Center(
            child: SizedBox(
              height: height(context) * 0.5,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 60, right: 20, left: 20, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'RESTAURATION RAPIDE LIVRÉE A VOTRE PORTE',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Config.colors.textColor,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire',
                          style: TextStyle(
                            fontSize: 16,
                            color: Config.colors.flouTextColor,
                          ),
                        )
                      ],
                    ),
                    CButton(
                      title: "Connexion",
                      onPressed: () {
                        route(context, LoginPage());
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -height(context) * 0.33,
            left: width(context) * 0.5,
            child: PositionnedElement(),
          ),
        ],
      ),
    );
  }
}
  //  Positioned(
  //             child: PositionnedElement(),
  //           ),
  //           Positioned(
  //             child: PositionnedElement(),
  //           )