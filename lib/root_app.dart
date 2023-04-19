import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/screens/bars/bar-page.dart';
import 'package:restaurant_app_yaya_food/view/screens/commands/commande-liste-page.dart';
import 'package:restaurant_app_yaya_food/view/screens/home/home-page.dart';
import 'package:restaurant_app_yaya_food/view/screens/profils/profil-user-page.dart';
import 'view/screens/foods/addFood/add-food-page.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        ListCommandePage(),
        BarListAll(),
        ProfilUser(),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home_filled,
      Icons.shopping_basket_rounded,
      Config.asset.bar,
      Icons.person_rounded,
    ];
    return Stack(
      children: [
        Container(
          alignment: AlignmentDirectional.bottomEnd,
          height: 110,
          child: Container(
            width: width(context),
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ), //BorderRadius.Only
              color: Config.colors.textColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                items.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: pageIndex == index
                              ? Config.colors.secondaryColor
                              : Config.colors.textColor,
                        ),
                        child: index != 2
                            ? Icon(
                                items[index],
                                size: 20,
                                color: Config.colors.whithColor,
                              )
                            : SvgPicture.asset(
                                height: 10, width: 10,
                                Config.asset.bar,
                                // ignore: deprecated_member_use
                                color: Config.colors.whithColor,
                              ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: width(context) * 0.42,
          child: InkWell(
            onTap: () {
              route(context, AddFoodPage());
            },
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: Config.colors.secondaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.add,
                size: 40,
                color: Config.colors.whithColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
