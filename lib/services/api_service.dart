import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty_api_flutter/models/character.dart';

Future<List<Character>> fetchCharacters() async {

  final response =
  await http.get(Uri.parse("https://rickandmortyapi.com/api/character"));

  if (response.statusCode == 200) {

    final data = jsonDecode(response.body);
    final List results = data['results'];

    return results.map((e) => Character.fromJson(e)).toList();

  } else {
    throw Exception("API error");
  }
}