// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemons _$PokemonsFromJson(Map<String, dynamic> json) {
  return Pokemons((json['pokemon'] as List)
      ?.map(
          (e) => e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$PokemonsToJson(Pokemons instance) =>
    <String, dynamic>{'pokemon': instance.pokemon};
