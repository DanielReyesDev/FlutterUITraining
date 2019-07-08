import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("title", style: this.titleStyle),
                      SizedBox(height: 7.0,),
                      Text("subtitle", style: this.subtitleStyle),
                    ],
                  ),
                ),
                Icon(Icons.star, color: Colors.red, size: 30.0),
                Text("41", style: TextStyle(fontSize: 20.0))
              ],
            ),
          )
        ],
      )
    );
  }
}