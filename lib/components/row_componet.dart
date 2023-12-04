import 'package:flutter/material.dart';

class RowComponet extends StatelessWidget {
  String title;
  String name;
  RowComponet({super.key, required this.title, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: const TextStyle(fontSize: 16.0)),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
