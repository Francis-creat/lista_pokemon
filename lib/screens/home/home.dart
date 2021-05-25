import 'package:flutter/material.dart';
import 'package:pokemon_lista/models/pokemon.dart';
import 'package:pokemon_lista/provider/pokemons.dart';
import 'package:pokemon_lista/style.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: orangetheme,
          title: Text(
            "Pokédex",
          ),
          centerTitle: true),
      body: ListView.builder(
        itemBuilder: builder,
        itemCount: listOfpokemons.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Pokemon pokemon = listOfpokemons.elementAt(index);
    return ListTile(
        leading:Image.asset(pokemon.image),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 10),
          Text(pokemon.name,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
          Text(
            pokemon.description,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                Text("Tipo",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                SizedBox(height: 3),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: pokemon.color),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    pokemon.type,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]),
              Column(children: [
                Text("Peso",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                SizedBox(height: 3),
                Text(pokemon.kg),
              ]),
              Column(children: [
                Text("Altura",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                SizedBox(height: 3),
                Text(pokemon.stature),
              ])
            ],
          )
        ])
          
            
          
        ); 
        
  }
}
