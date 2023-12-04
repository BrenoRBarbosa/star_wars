import 'package:flutter/material.dart';
import 'package:star_wars/components/row_componet.dart';
import 'package:star_wars/model/Results.dart';

class DialigComponent extends StatelessWidget {
  final Results? detalhes;
  DialigComponent({super.key, required this.detalhes});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.all(0),
      title: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              top: 24.0,
              right: 24.0,
              bottom: 0.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(detalhes?.name ?? '-'),
              ],
            ),
          ),
          Positioned(
            right: -4,
            top: -4,
            child: IconButton(
              icon: const Icon(
                Icons.cancel,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
      // title: Text(detalhes?.name ?? '-'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            RowComponet(
              title: "Ano de Nascimento: ",
              name: detalhes?.birthYear ?? '-',
            ),
            RowComponet(
              title: "Altura: ",
              name: detalhes?.height ?? '-',
            ),
            RowComponet(
              title: "Peso: ",
              name: detalhes?.mass ?? '-',
            ),
            RowComponet(
              title: "Gênero: ",
              name: detalhes?.gender ?? '-',
            ),
          ],
        ),
      ),
      // actions: [
      //   Column(
      //     children: [
      //       TextButton(
      //         onPressed: () => {
      //           Navigator.pop(context),
      //         },
      //         child: const Icon(Icons.cancel),
      //       ),
      //     ],
      //   )
      // ],
    );
  }
}

// Future<void> dialogComponet(BuildContext context) {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Basic dialog title'),
//           content: const Text(
//             'A dialog is a type of modal window that\n'
//             'appears in front of app content to\n'
//             'provide critical information, or prompt\n'
//             'for a decision to be made.',
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Disable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Enable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
