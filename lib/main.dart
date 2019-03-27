import 'package:flutter/material.dart';

const fluttterDarkGrey = Color(0xFF383838);
const fluttterLightGrey = Color(0xFFB1B1B1);
const fluttterPink = Color(0xFFEA4C89);
const fluttterBlue = Color(0xFF538CB8);
const fluttterMainFont = 'GothicA1';

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
        fontFamily: fluttterMainFont,
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
            'fluttter',
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

  Widget _buildPostHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dog1.png'),
                radius: 22.0,
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(4.0, 18.0, 16.0, 0.0),
                    child: Text(
                      'Love is Color',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w800,
                        color: fluttterDarkGrey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(4.0, 0.0, 2.0, 16.0),
                        child: Text(
                          'Fluffy McScruffins,',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: fluttterMainFont,
                            fontWeight: FontWeight.w700,
                            color: fluttterBlue,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 16.0),
                        child: Text(
                          '3 days ago',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: fluttterMainFont,
                            fontWeight: FontWeight.w600,
                            color: fluttterLightGrey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPostBody(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset('assets/1.jpg',
                width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
          ],
        ),
      ],
    );
  }

  Widget _buildPostFooter() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0.0),
                      child: Text(
                        '30',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: fluttterMainFont,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.chat_bubble,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0.0),
                      child: Text(
                        '0',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: fluttterMainFont,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0.0),
                      child: Text(
                        '177',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: fluttterMainFont,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.reply,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0.0),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0.0),
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      ),
      child: Column(
        children: <Widget>[
          _buildPostHeader(),
          _buildPostBody(context),
          _buildPostFooter(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Card> testList = [_buildPostCard(context)];

    return TabBarView(
      children: <Widget>[
        ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) => testList[index],
        ),
        Text('2'),
        Text('3'),
      ],
    );
  }
}
