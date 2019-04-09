import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex_v2/models/pokemon.model.dart';

part 'pokemons.model.g.dart';


@JsonSerializable()
class Pokemons {

  List<Pokemon> pokemon;
 
  Pokemons(this.pokemon);

  factory Pokemons.fromJson(Map<String, dynamic> json) => _$PokemonsFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonsToJson(this);
}