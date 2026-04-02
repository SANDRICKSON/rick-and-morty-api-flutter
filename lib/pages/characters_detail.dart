import 'package:flutter/material.dart';
import 'package:rick_and_morty_api_flutter/models/character.dart';

class CharacterDetailPage extends StatelessWidget {

  final Character character;

  const CharacterDetailPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(character.name)),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Image.network(
              character.image,
              height: 300,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(character.name,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),

                  const SizedBox(height: 20),

                  Text("Status: ${character.status}",
                      style: const TextStyle(fontSize: 20)),

                  Text("Species: ${character.species}",
                      style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}