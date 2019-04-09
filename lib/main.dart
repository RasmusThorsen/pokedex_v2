import 'package:flutter/material.dart';
import 'package:pokedex_v2/blocs/pokemon.bloc.dart';
import 'package:pokedex_v2/screens/home.screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllPokemons();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Pokedex'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}
