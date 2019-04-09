import 'package:flutter/material.dart';
import 'package:pokedex_v2/models/pokemon.model.dart';
import 'package:pokedex_v2/screens/details.screen.dart';

class PokemonListItem extends StatelessWidget {
  final Pokemon _pokemon;

  PokemonListItem(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(this._pokemon),
            ),
          ),
      child: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Hero(
              tag: _pokemon.name,
              child: Image.network(
                _pokemon.img,
                color: this._pokemon.guessed ? null : Colors.grey,
              ),
            ),
            Text(_pokemon.name),
          ],
        ),
      ),
    );
  }
}