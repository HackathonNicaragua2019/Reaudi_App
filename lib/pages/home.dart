import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:reaudi/customcolors/custom-colors.dart';
import 'package:reaudi/services/auth.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

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
  CustomColors customColors = new CustomColors();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.titulo),

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => print('Busqueda presionado'),
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.sort),
              onPressed: () => print('Filtro presionado'),
            )
          ],

          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            indicator: BubbleTabIndicator(
              indicatorHeight: 33.0,
              indicatorColor: customColors.primarySwatch,
              tabBarIndicatorSize: TabBarIndicatorSize.label,
            ),
            tabs: <Widget>[
              Tab(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text('Frecuentes'),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text('Más Populares'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('The Enchanted Nightingale'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                      ButtonTheme.bar(
                        // make buttons use the appropriate styles for cards
                        child: ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('BUY TICKETS'),
                              onPressed: () {
                                /* ... */
                              },
                            ),
                            FlatButton(
                              child: const Text('LISTEN'),
                              onPressed: () {
                                /* ... */
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Text('Hola Mundo'),
            )
            /*AccountPage(
              auth: widget.auth,
              userId: widget.userId,
              onSignedOut: widget.onSignedOut,
            )*/
          ],
        ),
      ),
    );
  }
}
