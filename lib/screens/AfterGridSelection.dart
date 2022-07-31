import 'package:flutter/material.dart';

class SelectedGridScreen extends StatelessWidget {
  const SelectedGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('Thank You!'),
        Text('You have selected as the best library'),
      ],
    ));
  }
}
