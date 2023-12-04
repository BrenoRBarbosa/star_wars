import 'package:flutter/material.dart';
import 'package:star_wars/components/dialog_componet.dart';
import 'package:star_wars/components/progress_component.dart';
import 'package:star_wars/model/people.dart';

import '../http/web_client.dart';

class DasheboardPage extends StatefulWidget {
  const DasheboardPage({super.key});

  @override
  State<DasheboardPage> createState() => _DasheboardPageState();
}

class _DasheboardPageState extends State<DasheboardPage> {
  final data = get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.shadow,
        title: const Text("Dasheboard"),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage('lib/images/StarWars_WellPaper.jpg'),
        //         fit: BoxFit.cover)),
        child: FutureBuilder<People?>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: snapshot.data!.results!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DialigComponent(
                                detalhes: snapshot.data?.results?[index],
                              ),
                            ),
                          );
                        },
                        title: Text(snapshot.data?.results?[index].name ?? '-'),
                      );
                    },
                  ),
                ),
              );
            }
            return const ProgressComponent();
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   tooltip: 'Arco-Ires',
      //   onPressed: () {},
      // ),
    );
  }
}
