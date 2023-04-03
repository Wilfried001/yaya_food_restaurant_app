import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/screens/auth/forget-password/recuperation-password.dart';
import 'package:restaurant_app_yaya_food/view/screens/auth/login-page.dart';
import 'package:restaurant_app_yaya_food/view/screens/home/home-page.dart';
import 'package:restaurant_app_yaya_food/view/widgets/button.dart';
import 'package:restaurant_app_yaya_food/view/widgets/positionned-element.dart';
import 'package:restaurant_app_yaya_food/view/widgets/textField.dart';

class ChangePasswordeCount extends StatelessWidget {
  const ChangePasswordeCount({super.key});

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
                    height: height(context) * 0.53,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Modifiez votre mot de passe',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Config.colors.textColor,
                          ),
                        ),
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nouveau mot de passe',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Config.colors.textColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CtextField(hint: "Nouveau mot de passe")
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirmer mot de passe',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Config.colors.textColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CtextField(hint: "Confirmer mot de passe"),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CButton(
                          title: "Modifier",
                          onPressed: () {
                            CircularProgressIndicator(
                              color: Config.colors.primaryColor,
                            );
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
        ),
      ),
    );
  }
}
