import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/config/function.dart';
import 'package:restaurant_app_yaya_food/view/widgets/bar-item.dart';
import 'package:restaurant_app_yaya_food/view/widgets/textField.dart';

class BarListAll extends StatefulWidget {
  const BarListAll({super.key});

  @override
  State<BarListAll> createState() => _BarListAllState();
}

class _BarListAllState extends State<BarListAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(),
        centerTitle: true,
        title: Text(
          "La liste des bars affiliés",
          style: TextStyle(color: Config.colors.primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CtextField(
                hint: "Rechercher une publication...",
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  BarItem(),
                  SizedBox(
                    height: 20,
                  ),
                  BarItem(),
                  SizedBox(
                    height: 20,
                  ),
                  BarItem(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
