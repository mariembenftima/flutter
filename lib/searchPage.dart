import 'package:flutter/material.dart';

class searchPage extends StatelessWidget {
  const searchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
          Container(
            color: Colors.green,
            child: Center(child: Text("flex2"),),
          ),
          ),
          Expanded(
            flex:3,
            child:Container(
            color: Colors.orange,
            child: Center(child: Text("flex1"),),
          )
          ),
          
        ],
      )
    );
  }
}