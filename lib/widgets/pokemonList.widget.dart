import 'package:flutter/material.dart';
import 'package:pokedex_v2/blocs/pokemon.bloc.dart';
import 'package:pokedex_v2/models/pokemons.model.dart';
import 'package:pokedex_v2/widgets/pokemonListItem.widget.dart';

class PokemonList extends StatefulWidget {
  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  void initState() {
    super.initState();
    bloc.fetchAllPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
          return bloc.fetchAllPokemons();
      },
      child: StreamBuilder(
        stream: bloc.allPokemons,
        builder: (BuildContext context, AsyncSnapshot<Pokemons> snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();

          return ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: snapshot.data.pokemon.length,
            itemExtent: 120,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                child: PokemonListItem(snapshot.data.pokemon[index]),
                direction: DismissDirection.endToStart,
                background: Container(color: Colors.red),
                key: Key(snapshot.data.pokemon[index].id.toString()),
                onDismissed: (direction) {
                  setState(() {
                    snapshot.data.pokemon.removeAt(index);
                  });
                },
              );
            },
          );
        },
      ),
    );
  }
}
