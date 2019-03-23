import 'package:flutter/material.dart';

const fluttterDarkGrey = const Color(0xFF383838);

void main() => runApp(FluttterApp());

class FluttterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: fluttterDarkGrey,
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
          bottom: TabBar(
            indicatorColor: Color(0xFFEA4C89),
            unselectedLabelColor: Colors.grey[300],
            labelColor: Colors.white,
            labelStyle: TextStyle(
                fontSize: 16.0,
            ),
            tabs: [
              Tab(
                text: 'FOLLOWING',
              ),
              Tab(
                text: 'POPULAR',
              ),
              Tab(
                text: 'RECENT',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
