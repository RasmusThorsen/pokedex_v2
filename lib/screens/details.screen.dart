import 'package:flutter/material.dart';
import 'package:pokedex_v2/models/pokemon.model.dart';

class DetailScreen extends StatelessWidget {
  final Pokemon _pokemon;

  DetailScreen(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(_pokemon.name),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            children: <Widget>[
              Hero(
                tag: _pokemon.name,
                child: Image.network(_pokemon.img,
                    color: this._pokemon.guessed ? null : Colors.grey),
              ),
              _buildTitle(),
              _buildInfo()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      _pokemon.name,
      style: TextStyle(fontSize: 26),
    );
  }

  Widget _buildInfo() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Height: ' + _pokemon.height),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(' Weight: ' + _pokemon.weight),
            ),
          ],
        ),

      ],
    );
  }
}