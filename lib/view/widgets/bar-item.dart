import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';

class BarItem extends StatelessWidget {
  const BarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: width(context),
      decoration: BoxDecoration(
        color: Config.colors.whithColor,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(134, 117, 117, 117),
              spreadRadius: 0,
              blurRadius: 4),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Config.colors.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width(context) * 0.72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(20),
                      ), //BorderRadius.Only
                      image: DecorationImage(
                        image: AssetImage(Config.asset.pokawa),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Config.colors.whithColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: SvgPicture.asset(
                              Config.asset.fastFood,
                              color: Config.colors.secondaryColor,
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Config.colors.whithColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: SvgPicture.asset(
                              Config.asset.pizza,
                              color: Config.colors.secondaryColor,
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Config.colors.whithColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: SvgPicture.asset(
                              Config.asset.burger,
                              color: Config.colors.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pokawa - Poké Hawaïen 🍍- Grenoble",
                    style: TextStyle(
                      fontSize: 16,
                      color: Config.colors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: width(context) * 0.26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Config.colors.whithColor,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(134, 117, 117, 117),
                              spreadRadius: 0,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Text(
                          "Dejeuner",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: width(context) * 0.26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Config.colors.whithColor,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(134, 117, 117, 117),
                              spreadRadius: 0,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Text(
                          "Frites",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: width(context) * 0.26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Config.colors.whithColor,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(134, 117, 117, 117),
                              spreadRadius: 0,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Text(
                          "Dinner",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
