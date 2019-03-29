import 'package:flutter/material.dart';

import 'activity.dart';
import 'colors.dart';
import 'fontfams.dart';
import 'models/post.dart';
import 'utils/fluttter_data.dart';

void main() => runApp(FluttterApp());

class FluttterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttter',
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatelessWidget {
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

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: fluttterDarkGrey,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[600],
                  ),
                ),
              ),
              child: Column(),
              margin: EdgeInsets.zero,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[600],
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: fluttterPink,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: fluttterPink,
                        fontSize: 16.0,
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.explore,
                      color: fluttterMidGrey,
                    ),
                    title: Text(
                      'Explore',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.show_chart,
                      color: fluttterMidGrey,
                    ),
                    title: Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ActivityRoute()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: fluttterMidGrey,
                    ),
                    title: Text(
                      'Messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[600],
                  ),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.cloud_upload,
                  color: fluttterMidGrey,
                ),
                title: Text(
                  'Upload a Pic',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: fluttterMainFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: fluttterMidGrey,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      color: fluttterMidGrey,
                    ),
                    title: Text(
                      'Report a Bug',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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
          iconTheme: IconThemeData(
            color: Colors.grey[300],
          ),
          elevation: 0.0,
          title: Text(
            'fluttter',
            style: TextStyle(
              fontFamily: fluttterBrandFont,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityRoute()),
                );
              },
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
        backgroundColor: fluttterLightGrey,
        body: BodyContent(),
        drawer: _buildDrawer(context),
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  Widget _buildPostHeader(Post post) {
    final String _title = post.title;
    final String _author = post.author;
    final String _authorImg = post.authorImg;
    final String _date = post.date;

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
                backgroundImage: AssetImage(_authorImg),
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
                      _title,
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
                  Container(
                    padding: const EdgeInsets.fromLTRB(4.0, 0.0, 2.0, 16.0),
                    child: Text(
                      _author,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w700,
                        color: fluttterBlue,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 16.0),
                    child: Text(
                      ', ' + _date,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: fluttterMainFont,
                        fontWeight: FontWeight.w600,
                        color: fluttterMidGrey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPostBody(BuildContext context, Post post) {
    final String _postImg = post.postImg;

    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(_postImg,
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.width / 5) * 3.5,
                fit: BoxFit.cover),
          ],
        ),
      ],
    );
  }

  Widget _buildPostFooter(Post post) {
    int _likes = post.likes;
    int _comments = post.comments;
    int _views = post.views;
    int _refluttts = post.refluttts;
    int _attachments = post.attachments;

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
                      padding: EdgeInsets.fromLTRB(8.0, 2.0, 24.0, 0.0),
                      child: Text(
                        _likes.toString(),
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
                      padding: EdgeInsets.fromLTRB(8.0, 2.0, 24.0, 0.0),
                      child: Text(
                        _comments.toString(),
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
                      padding: EdgeInsets.fromLTRB(8.0, 2.0, 24.0, 0.0),
                      child: Text(
                        _views.toString(),
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
                  Visibility(
                    visible: isNotEqualToZero(_refluttts),
                    child: Icon(
                      Icons.reply,
                      color: Colors.grey,
                    ),
                  ),
                  Visibility(
                    visible: isNotEqualToZero(_refluttts),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 2.0,
                          smallerPadding(isNotEqualToZero(_refluttts)), 0.0),
                      child: Text(
                        _refluttts.toString(),
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: fluttterMainFont,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isNotEqualToZero(_attachments),
                    child: Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ),
                  Visibility(
                    visible: isNotEqualToZero(_attachments),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0.0),
                      child: Text(
                        _attachments.toString(),
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: fluttterMainFont,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
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

  bool isNotEqualToZero(int value) => value != 0 ? true : false;

  double smallerPadding(bool elementInvisible) =>
      elementInvisible == true ? 8.0 : 24.0;

  Widget _buildPostCard(BuildContext context, Post post) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      ),
      child: Column(
        children: <Widget>[
          _buildPostHeader(post),
          _buildPostBody(context, post),
          _buildPostFooter(post),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Post> followingPosts = FluttterData().getFollowingData();
    final List<Post> popularPosts = FluttterData().getPopularData();
    final List<Post> recentPosts = FluttterData().getRecentData();

    Widget getData(List<Post> posts, int index) {
      List<Card> postCards = [];
      posts.forEach((value) {
        postCards.add(_buildPostCard(context, value));
      });
      return postCards[index];
    }

    return TabBarView(
      children: <Widget>[
        ListView.builder(
          itemCount: followingPosts.length,
          itemBuilder: (BuildContext context, int index) =>
              getData(followingPosts, index),
        ),
        ListView.builder(
          itemCount: popularPosts.length,
          itemBuilder: (BuildContext context, int index) =>
              getData(popularPosts, index),
        ),
        ListView.builder(
          itemCount: recentPosts.length,
          itemBuilder: (BuildContext context, int index) =>
              getData(recentPosts, index),
        ),
      ],
    );
  }
}
