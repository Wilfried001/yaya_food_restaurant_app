import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/screens/auth/forget-password/change-password-page.dart';
import 'package:restaurant_app_yaya_food/view/screens/home/home-page.dart';
import 'package:restaurant_app_yaya_food/view/widgets/button.dart';
import 'package:restaurant_app_yaya_food/view/widgets/positionned-element.dart';
import 'package:restaurant_app_yaya_food/view/widgets/textField.dart';

class RecuperationPassword extends StatelessWidget {
  const RecuperationPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context),
          child: Stack(
            children: [
              Positioned(
                top: -height(context) * 0.33,
                left: -width(context) * 0.5,
                child: PositionnedElement(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: Container(
                    width: width(context),
                    height: height(context) * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recupération de mot de passe',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Config.colors.textColor,
                          ),
                        ),
                        Text(
                          'Entrer votre adresse email pour recupérer votre compte',
                          style: TextStyle(
                            fontSize: 16,
                            color: Config.colors.textColor,
                          ),
                        ),
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Adresse email',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Config.colors.textColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CtextField(hint: "Adresse email"),
                              ],
                            ),
                          ],
                        ),
                        CButton(
                          title: "Récuperer",
                          onPressed: () {
                            route(context, ChangePasswordeCount());
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
        ),
      ),
    );
  }
}
