import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:reaudi/customcolors/custom-colors.dart';
import 'package:reaudi/services/auth.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.titulo, this.auth, this.userId, this.onSignedOut})
      : super(key: key);

  final String titulo;
  final BaseAuth auth;
  final VoidCallback onSignedOut;
  final String userId;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.titulo),
      ),
      body: Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}
