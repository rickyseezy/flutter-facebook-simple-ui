import 'package:facebook_app_ui/data/data.dart';
import 'package:facebook_app_ui/icons/facebook_icon_icons.dart';
import 'package:facebook_app_ui/models/user.dart';
import 'package:facebook_app_ui/widgets/feed.dart';
import 'package:facebook_app_ui/widgets/input_search.dart';
import 'package:facebook_app_ui/widgets/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.photo_camera,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
              InputSearch(),
              Stack(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      FacebookIcon.chat,
                      size: 30.0,
                      color: Color(0xff0180FB),
                    ),
                    onPressed: () {},
                  ),
                  Positioned(
                    top: 7,
                    right: 9,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.red,
                          shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Stories', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  Text('See Archive', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),),
                  SizedBox(width: 10.0,),
                  Icon(Icons.arrow_forward_ios, size: 10,),
                ],)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mockData.users.length,
                itemBuilder: (_, i) {
                User user = mockData.users[i];
                return StoryItem(user, i);
              })
          ),
          Feed(),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff3B5B99)
        ),
        child: Icon(Icons.add, color: Colors.white, size: 30,),),
    );
  }
}
