import 'package:flutter/material.dart';
import 'package:restaurant_app_yaya_food/config/config.dart';
import 'package:restaurant_app_yaya_food/view/widgets/notification-items.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Config.colors.primaryColor),
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Config.colors.primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: Config.colors.primaryColor,
                ),
              ],
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NotificationItem(),
              NotificationItem(),
              NotificationItem(),
              NotificationItem(),
              NotificationItem(),
              NotificationItem(),
            ],
          ),
        ),
      ),
    );
  }
}
