import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;

import 'package:pokedex_v2/models/pokemons.model.dart';

class PokemonProvider {
  
  Client client = Client();

  Future<Pokemons> fetchPokemons() async {
    final response = await client.get('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
     if (response.statusCode == 200) {
      return Pokemons.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}