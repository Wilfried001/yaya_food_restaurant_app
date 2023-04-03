import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/widgets/bottom-sheet.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width(context),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Config.colors.backgroundTextField,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(Config.asset.cesar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Légumes grillés☀️",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Config.colors.primaryColor,
                    ),
                  ),
                ),
                Text(
                  "Nom du Bar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Config.colors.primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "5.00 € x 1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Config.colors.secondaryColor,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.bottomSheet(CbottomSheet());
                    },
                    child: Text(
                      "Voir details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Config.colors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
