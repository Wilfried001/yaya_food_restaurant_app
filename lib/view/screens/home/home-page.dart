import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/screens/notification/notification-page.dart';
import 'package:restaurant_app_yaya_food/view/widgets/filtre-categorie-food.dart';
import 'package:restaurant_app_yaya_food/view/widgets/grid-cart-product.dart';
import 'package:restaurant_app_yaya_food/view/widgets/textField.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text(
          "Acceuil",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Config.colors.primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                route(context, NotificationsPage());
              },
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications_active_rounded,
                    color: Config.colors.primaryColor,
                  ),
                  Positioned(
                    top: 0,
                    right: 1,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Config.colors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context) * 2.17,
          width: width(context),
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Notre nourriture",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Config.colors.textTextField,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Publications",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                                color: Config.colors.primaryColor,
                              ),
                            ),
                            Text(
                              "recentes",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                                color: Config.colors.secondaryColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CtextField(hint: "Rechercher une publication...")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: FiltreCetegorieFood()),
                SizedBox(
                  height: 30,
                ),
                Expanded(child: ProductItems())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
