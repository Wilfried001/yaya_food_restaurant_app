import 'package:flutter/material.dart';

class DescriptionsWidget extends StatelessWidget {
  const DescriptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,  quis nostrud exercitation ullamco laboris nisi ut  aliquip ex ea commodo consequat. "),
      ),
    );
  }
}
