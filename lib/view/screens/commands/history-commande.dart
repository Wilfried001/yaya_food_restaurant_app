import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';

class HistoryCommande extends StatelessWidget {
  const HistoryCommande({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text(
          "Historiques des commandes",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Config.colors.primaryColor,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text(
          "Aucune Commande effectuée",
          style: TextStyle(color: Config.colors.flouTextColor),
        ),
      ),
    );
  }
}
