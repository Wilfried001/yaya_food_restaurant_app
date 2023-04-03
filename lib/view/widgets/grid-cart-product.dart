import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/screens/foods/detail-food-page.dart';

class ProductItems extends StatefulWidget {
  const ProductItems({super.key});

  @override
  State<ProductItems> createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        route(context, detailsFoodsCartItem());
      },
      child: GridView.count(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          for (int i = 1; i < 10; i++)
            Column(
              children: [
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        Config.asset.cesar,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Légumes grillés☀️",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Config.colors.primaryColor,
                      ),
                    ),
                    Text(
                      "5.00 €",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Config.colors.secondaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
        ],
      ),
    );
  }
}
