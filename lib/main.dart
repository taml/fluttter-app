import 'package:flutter/material.dart';

void main() => runApp(FluttterApp());

class FluttterApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttter',
      home: HomePage(),
    );git
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF383838),
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey[300],
          ),
          onPressed: null,
        ),
        title: Text(
          'Fluttter',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 26.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.show_chart,
              color: Colors.grey[300],
              semanticLabel: 'activity',
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[300],
              semanticLabel: 'search',
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
