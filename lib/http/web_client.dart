import 'package:dio/dio.dart';

import '../model/people.dart';

Future<People?> get() async {
  //final url = 'https://swapi.dev/api/people/?page=2';

  final dio = Dio();
  final result =
      await dio.get<Map<String, dynamic>>('https://swapi.dev/api/people/');
  //.get<Map<String, dynamic>>('https://swapi.dev/api/people/?page=$id');

  return People.fromJson(result.data!);
}
