import 'package:flutter/material.dart';

class ProgressComponent extends StatelessWidget {
  const ProgressComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Color.fromRGBO(13, 71, 161, 1),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text("Carregando", style: const TextStyle(fontSize: 16.0)),
          ),
        ],
      ),
    );
  }
}
