import 'package:flutter/material.dart';
import 'package:rick_and_morty_api_flutter/models/character.dart';
import 'package:rick_and_morty_api_flutter/pages/characters_detail.dart';
import 'package:rick_and_morty_api_flutter/services/api_service.dart';


class CharactersPage extends StatelessWidget {

  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Rick & Morty")),

      body: FutureBuilder<List<Character>>(

        future: fetchCharacters(),

        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Error"));
          }

          final characters = snapshot.data!;

          return ListView.builder(

            itemCount: characters.length,

            itemBuilder: (context, index) {

              final c = characters[index];

              return Card(
                margin: const EdgeInsets.all(10),

                child: ListTile(

                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(c.image),
                  ),

                  title: Text(c.name),
                  subtitle: Text("${c.species} • ${c.status}"),

                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CharacterDetailPage(character: c),
                      ),
                    );

                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}