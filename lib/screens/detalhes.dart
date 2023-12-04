import 'package:flutter/material.dart';

import '../components/row_componet.dart';
import '../model/Results.dart';

class Detalhes extends StatefulWidget {
  final Results? detalhes;

  const Detalhes({super.key, required this.detalhes});

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RowComponet(
            title: "",
            name: widget.detalhes?.name ?? '-',
          ),
          RowComponet(
            title: "Ano de Nascimento: ",
            name: widget.detalhes?.birthYear ?? '-',
          ),
          RowComponet(
            title: "Altura: ",
            name: widget.detalhes?.height ?? '-',
          ),
          RowComponet(
            title: "Peso: ",
            name: widget.detalhes?.mass ?? '-',
          ),
          RowComponet(
            title: "Gênero: ",
            name: widget.detalhes?.gender ?? '-',
          ),
          // RowComponet(
          //   title: "Planeta Natal: ",
          //   name: widget.detalhes?.homeworld ?? '-',
          // ),
        ],
      ),
    );
  }
}
