import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slidedrawer_navigation/favourites.dart';
import 'package:slidedrawer_navigation/pluggin.dart';
import 'package:slidedrawer_navigation/setting.dart';
import 'package:slidedrawer_navigation/updates.dart';
import 'package:slidedrawer_navigation/workflow.dart';

import 'PeoplePage.dart';
import 'notificatio.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          padding: EdgeInsets.only(top: 10, left: 10),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  foregroundColor: Colors.blue,
                  //  child: Icon(Icons.add_a_photo),
                  child: Container(
                    margin: EdgeInsets.only(left: 35, top: 40),
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.black,
                      size: 17,
                    ),
                  ),
                  backgroundImage: AssetImage('images/cir.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Be@likeMr.Ameer',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.explore,
                  size: 15,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'ameermukhtar@gmail.com',
              style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 20,
              child: Divider(
                thickness: 1,
                color: Colors.blueGrey,
              ),
            ),
            builMenuItem(
              text: 'People',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            builMenuItem(
                text: 'Favourite',
                icon: Icons.favorite,
                onClicked: () => selectedItem(context, 1)),
            builMenuItem(
                text: 'WorkFlow',
                icon: Icons.workspaces_filled,
                onClicked: () => selectedItem(context, 2)),
            builMenuItem(
                text: 'Updates',
                icon: Icons.update,
                onClicked: () => selectedItem(context, 3)),
            SizedBox(
              height: 10,
              child: Divider(
                thickness: 1,
                color: Colors.blueGrey,
              ),
            ),
            builMenuItem(
                text: 'Pluggins',
                icon: Icons.plumbing,
                onClicked: () => selectedItem(context, 4)),
            builMenuItem(
                text: 'Notifications',
                icon: Icons.notifications,
                onClicked: () => selectedItem(context, 5)),
            builMenuItem(
                text: 'Settings',
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 6)),

          ],
        ),
      ),
    );
  }

//some methods and functions to call next dartfile for check or update
  builMenuItem(
      {required String text, required IconData icon, VoidCallback? onClicked
      //voidcall back use a function named clicked for ontap function
      }) {
    final color = Colors.black;
    final hoverColor = Colors.black45;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PeoplePge()));
          break;
        }
      case 1:
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => favourite()));
          break;
        }
      case 2:
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => WorkFlow()));
          break;
        }
      case 3:
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Updated()));
          break;
        }
      case 4:
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Pluggins()));
          break;
        }
      case 5:
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Notifications()));
          break;
        }
      case 6:
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Settings()));
          break;
        }
    }
  }
}
