import 'package:flutter/material.dart';

import 'colors.dart';
import 'fontfams.dart';

import 'models/activity_post.dart';
import 'utils/fluttter_data.dart';

class ActivityRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fluttterDarkGrey,
        brightness: Brightness.dark,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.grey[300],
        ),
        title: Text(
          'Activity',
          style: TextStyle(
            fontFamily: fluttterMainFont,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.grey[300],
              semanticLabel: 'settings',
            ),
            onPressed: null,
          ),
        ],
      ),
      body: ActivityContent(),
    );
  }
}

class ActivityContent extends StatelessWidget {
  Widget _buildListTile(ActivityPost post) {
    final _authorImg = post.authorImg;
    final _author = post.author;
    final _activityText = post.activityText;
    final _date = post.date;

    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.grey[300],
      ))),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(_authorImg),
          radius: 22.0,
        ),
        title: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                _author,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: fluttterMainFont,
                  fontWeight: FontWeight.w700,
                  color: fluttterBlue,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
              child: Text(
                _activityText,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: fluttterMainFont,
                  fontWeight: FontWeight.w600,
                  color: fluttterDarkGrey,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
        subtitle: Container(
          padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
          child: Text(
            _date,
            style: TextStyle(
              fontFamily: fluttterMainFont,
              fontWeight: FontWeight.w600,
              color: fluttterMidGrey,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<ActivityPost> activityPosts = FluttterData().getActivityData();

    Widget getData(List<ActivityPost> posts, int index) {
      List<Container> postTiles = [];
      posts.forEach((value) {
        postTiles.add(_buildListTile(value));
      });
      return postTiles[index];
    }

    return ListView.builder(
      itemCount: activityPosts.length,
      itemBuilder: (BuildContext context, int index) =>
          getData(activityPosts, index),
    );
  }
}
