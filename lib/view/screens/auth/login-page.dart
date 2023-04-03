import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/root_app.dart';
import 'package:restaurant_app_yaya_food/view/screens/auth/forget-password/recuperation-password.dart';
import 'package:restaurant_app_yaya_food/view/screens/home/home-page.dart';
import 'package:restaurant_app_yaya_food/view/widgets/button.dart';
import 'package:restaurant_app_yaya_food/view/widgets/positionned-element.dart';
import 'package:restaurant_app_yaya_food/view/widgets/textField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                            'Connexion',
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
                                    'Nom d’utilisateur',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Config.colors.textColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CtextField(hint: "Username")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mot de passe',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Config.colors.textColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CtextField(hint: "User Passeword"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      route(context, RecuperationPassword());
                                    },
                                    child: SizedBox(
                                      width: width(context),
                                      child: Text(
                                        textAlign: TextAlign.end,
                                        'Mot de passe oublié?',
                                        style: TextStyle(
                                          color: Config.colors.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          CButton(
                            title: "Connexion",
                            onPressed: () {
                              route(context, RootApp());
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
      ),
    );
  }
}
