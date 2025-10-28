import 'package:flutter/material.dart';
import 'package:tp3_app/item_home.dart';
import 'package:tp3_app/offerPage.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Or match your theme
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/logo.jpg', // Replace with your logo path
            fit: BoxFit.contain,
          ),
        ),
        title: const Text(
          'Home Renting',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              print('Logout');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          offerPage(),
          Expanded(child: ListView(
            children: [
              ItemHome(),
              ItemHome(),
              ItemHome()
            ],
          ))

        ],
      ),
    );
  }
}