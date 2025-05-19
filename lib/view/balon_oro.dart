import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../data/jugadores_data.dart';
import '../model/jugador.dart';

class balon_oro extends StatelessWidget {
  const balon_oro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Balones de Oro"
              , style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20, 
                ),     
              ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                Colors.blueGrey[700]!,
                Colors.grey,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            )
          ),
        ),
      body: ListView.builder(
        itemCount: jugadoresTop20.length,
        itemBuilder: (context, index){
          final Jugador = jugadoresTop20[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12 , vertical: 6),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(Jugador.imagen),
                child: Text(Jugador.balones.toString()),
              ),
              title: Text(Jugador.nombre, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('País: ${Jugador.pais}'),
                  Text('Años: ${Jugador.anos.join(', ')}'),
              ],
            ),
            ),
          );
        }  
      ),
    );
  }
}
