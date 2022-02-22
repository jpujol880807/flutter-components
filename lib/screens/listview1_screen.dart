import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(
        children: options.map((option) => ListTile(
            leading: const Icon(Icons.timer_sharp),
            title: Text(option),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )
        ).toList(),
      )
    );
  }
}