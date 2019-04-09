import 'package:pokedex_v2/models/pokemons.model.dart';
import 'package:pokedex_v2/resources/pokemon-provider.dart';
import 'package:rxdart/rxdart.dart';

class PokemonBloc {
  final _pokemonProvider = PokemonProvider();
  final _pokemonFetcher = PublishSubject<Pokemons>();

  Observable<Pokemons> get allPokemons => _pokemonFetcher.stream;

  Future<void> fetchAllPokemons() async {
    Pokemons pokemons = await _pokemonProvider.fetchPokemons();
    _pokemonFetcher.sink.add(pokemons);

    return;
  }

  dispose() {
    _pokemonFetcher.close();
  }
}

final bloc = PokemonBloc();
