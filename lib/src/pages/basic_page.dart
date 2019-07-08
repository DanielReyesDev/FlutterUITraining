import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             _createImage(),
            _createTitleRow(),
            _createActionsRow(),
            _createDescriptionText(),
            _createDescriptionText(),
            _createDescriptionText(),
            _createDescriptionText(),
            _createDescriptionText(),
          ],
        ),
      )
    );
  }


  Widget _createImage() {
    return Image(image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),);
  }

  Widget _createTitleRow() {
    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Beautiful bridge and trees", style: this.titleStyle),
                        SizedBox(height: 7.0,),
                        Text("Stuttgart, Deutschland", style: this.subtitleStyle),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0),
                  Text("41", style: TextStyle(fontSize: 20.0))
                ],
              ),
            ),
    );
  }

  Widget _createActionsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createActionTile("Call", Icons.call),
        _createActionTile("Route", Icons.near_me),
        _createActionTile("Share", Icons.share)
      ],
    );
  }

  Widget _createActionTile(String title, IconData iconData) {
    return Column(
          children: <Widget>[
            Icon(iconData, color: Colors.blue, size: 40.0,),
            SizedBox(height: 5.0,),
            Text(title, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
          ],
        );
  }


  Widget _createDescriptionText() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Lorem veniam consectetur enim adipisicing magna cupidatat in occaecat aliqua dolor. Id esse quis pariatur laborum ad duis voluptate ea labore est nostrud. Tempor ad pariatur nulla cillum ipsum do id culpa non exercitation esse ullamco.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}