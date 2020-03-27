import 'package:facebook_app_ui/models/user.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final User user;
  final int i;

  StoryItem(this.user, this.i);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      child: Card(
        margin: EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 6,
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                height: double.infinity,
                width: double.infinity,
                image: AssetImage(user.story.background),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: LinearGradient(
                    colors: [
                      Colors.black54.withOpacity(0.0),
                      Colors.black38
                    ],
                    stops: [0.0, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            Positioned(
              top: 9,
              left: 15,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.08,
                height: MediaQuery.of(context).size.width * 0.08,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 2.0)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child:
                  i == 0 ? Container(
                    child: Center(child: Icon(Icons.add, color: Color(0xff0180FB),)),
                  ) : Image(
                    image: AssetImage(user.avatar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('${user.firstName} ${user.name} ', style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
