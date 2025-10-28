import 'package:flutter/material.dart';
import 'package:tp3_app/item_home.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ItemHome(),
        ItemHome(),
        ItemHome(),
        ItemHome(),
      ],
    );
  }
}