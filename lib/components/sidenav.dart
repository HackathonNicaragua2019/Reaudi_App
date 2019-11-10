import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:reaudi/customcolors/custom-colors.dart';

class Sidenav extends StatefulWidget {
  @override
  _SidenavState createState() => _SidenavState();
}

class _SidenavState extends State<Sidenav> {
  CustomColors customColors = new CustomColors();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Edycar Reyes'),
            accountEmail: Text('edycarreyes@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/profiles_photos/defaultFemenino.png'),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  customColors.primaryColor,
                  customColors.primarySwatch,
                ],
              ),
              /*image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/Raudi-Banner.jpg'),
                  ),*/
            ),
          ),
          ListTile(
            title: Text('Foro'),
            leading: Icon(Icons.message),
          ),
          ListTile(
            title: Text('Violentómetro'),
            leading: Icon(Icons.shutter_speed),
          ),
          ListTile(
            title: Text('Compartir App'),
            leading: Icon(Icons.share),
          ),
          ListTile(
            title: Text('Mi Cuenta'),
            leading: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
