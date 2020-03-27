import 'package:facebook_app_ui/data/data.dart';
import 'package:facebook_app_ui/icons/facebook_icon_icons.dart';
import 'package:facebook_app_ui/models/user.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  Widget _buildFeeditem(int i, BuildContext context) {
    User user = mockData.users.reversed.toList()[i];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Row(
              children: <Widget>[
                Text(
                  '${user.firstName} ${user.name}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                    child: Text(
                  user.action,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15.0),
                ))
              ],
            ),
            leading: Stack(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(user.avatar),
                ),
                Positioned(
                  bottom: -4,
                  right: -2,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        Icons.people,
                        size: 17.0,
                      )),
                )
              ],
            ),
            //trailing: Icon(Icons.more_horiz),
            subtitle: Text('3 mins ago'),
          ),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: AssetImage(user.story.background),
                height: 200,
                width: 500,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 45,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff0180FB),
                            shape: BoxShape.circle
                        ),
                        child: Icon(
                          FacebookIcon.likeButton,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 2,
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2)
                          ),
                          child: Icon(Icons.favorite, color: Colors.white, size: 13.0,),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 8.0,),
                Text('400'),
                Spacer(),
                Text('122 Comments')
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          mockData.users.length, (i) => _buildFeeditem(i, context)),
    );
  }
}
