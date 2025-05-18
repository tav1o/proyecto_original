import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text(
        'Futbol Pro'
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
       leading: Icon(
         Icons.sports_soccer,
          color: Colors.white,
          size: 30, 
       ),
       actions:[
          IconButton( 
            icon: Icon(Icons.stars,color: Colors.white, size: 30,),
             onPressed: () => print("favoritos"),
          ),
       ],
    ),
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey[700]!, Colors.grey],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
