import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/widgets/button.dart';

class CbottomSheet extends StatelessWidget {
  const CbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: width(context),
      decoration: BoxDecoration(
          color: Config.colors.whithColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 15, left: 15, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 35,
                    color: Config.colors.primaryColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(Config.asset.cesar),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Config.colors.primaryColor,
                        ),
                      ),
                    ),
                    Text(
                      "Nom du Bar",
                      style: TextStyle(
                        fontSize: 20,
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
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CButton(
                  sideWidth: 3,
                  color: Config.colors.whithColor,
                  sideColor: Config.colors.primaryColor,
                  width: 160,
                  titleColor: Config.colors.primaryColor,
                  title: "Refuser",
                  onPressed: () {},
                ),
                CButton(
                  width: 160,
                  title: "Accepter",
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
