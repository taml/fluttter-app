import 'package:flutter/material.dart';

const fluttterDarkGrey = const Color(0xFF383838);
const fluttterPink = const Color(0xFFEA4C89);

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

  Widget _buildTabs() {
    return TabBar(
      indicatorColor: fluttterPink,
      unselectedLabelColor: Colors.grey[300],
      labelColor: Colors.white,
      labelPadding: EdgeInsets.symmetric(vertical: 4.0),
      labelStyle: TextStyle(
        fontSize: 16.0,
        fontFamily: 'GothicA1',
        fontWeight: FontWeight.w400,
      ),
      tabs: [
        Tab(
          text: 'Following'.toUpperCase(),
        ),
        Tab(
          text: 'Popular'.toUpperCase(),
        ),
        Tab(
          text: 'Recent'.toUpperCase(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: fluttterDarkGrey,
          brightness: Brightness.dark,
          elevation: 0.0,
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
          bottom: _buildTabs(),
        ),
        backgroundColor: Color(0xFFF2F2F2),
        body: BodyContent(),
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        Text('1'),
        Text('2'),
        Text('3'),
      ],
    );
  }

}
