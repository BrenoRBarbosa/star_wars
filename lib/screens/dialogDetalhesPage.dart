import 'package:flutter/material.dart';

class DialigComponent extends StatelessWidget {
  String title;
  String conteudo;
  DialigComponent({super.key, required  this.title, required this.conteudo});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () => {Navigator.pop(context)},
                child: const Icon(Icons.cancel)),
          ],
        )
      ],
      title: Text(title),
      content: Text(conteudo),
    );
  }
}