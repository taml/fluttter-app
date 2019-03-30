import 'package:flutter/material.dart';

import '../activity.dart';
import '../colors.dart';
import '../fontfams.dart';

class DrawerContent extends StatelessWidget {
  Widget _buildDrawerItem(IconData icon, String text, Color color) {
    return ListTile(
      leading: Icon(
        icon,
        color: fluttterMidGrey,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 16.0,
          fontFamily: fluttterMainFont,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: fluttterDarkGrey,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 250.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/profile/dog3.png'),
                        radius: 35.0,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 16.0, 4.0, 0.0),
                      child: Text(
                        'Majestic Floof',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontFamily: fluttterMainFont,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Text(
                            '21',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: fluttterMainFont,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(2.0, 0.0, 48.0, 0.0),
                            child: Text(
                              'followers',
                              style: TextStyle(
                                color: fluttterMidGrey,
                                fontFamily: fluttterMainFont,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            '45',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: fluttterMainFont,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(2.0, 0.0, 16.0, 0.0),
                            child: Text(
                              'following',
                              style: TextStyle(
                                color: fluttterMidGrey,
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
                margin: EdgeInsets.zero,
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
                  _buildDrawerItem(Icons.explore, 'Explore', Colors.white),
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
                        MaterialPageRoute(
                            builder: (context) => ActivityRoute()),
                      );
                    },
                  ),
                  _buildDrawerItem(Icons.email, 'Messages', Colors.white),
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
              child: _buildDrawerItem(
                  Icons.cloud_upload, 'Upload a Pic', Colors.white),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  _buildDrawerItem(Icons.settings, 'Settings', Colors.white),
                  _buildDrawerItem(Icons.info, 'Report a Bug', Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}