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
        backgroundColor: customColors.customGray,
        drawer: Drawer(
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
        ),
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
                  child: Text('Principal'),
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    // elevation: 40,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profiles_photos/defaultFemenino.png'),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.sentiment_dissatisfied),
                            color: Colors.white,
                          ),
                          title: Text(
                            'Anónimo-ABC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '10-Nov-2019',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                            style: TextStyle(
                                color: customColors.gray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14.6, right: 14.6, bottom: 14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing '
                            'and typesetting industry. Lorem Ipsum has been...',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Divider(
                            color: customColors.gray,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Comentarios',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Visitas',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    // elevation: 40,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profiles_photos/defaultFemenino.png'),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.sentiment_dissatisfied),
                            color: Colors.white,
                          ),
                          title: Text(
                            'Anónimo-ABC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '10-Nov-2019',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                            style: TextStyle(
                                color: customColors.gray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14.6, right: 14.6, bottom: 14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing '
                            'and typesetting industry. Lorem Ipsum has been...',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Divider(
                            color: customColors.gray,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Comentarios',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Visitas',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    // elevation: 40,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profiles_photos/defaultFemenino.png'),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.sentiment_dissatisfied),
                            color: Colors.white,
                          ),
                          title: Text(
                            'Anónimo-ABC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '10-Nov-2019',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                            style: TextStyle(
                                color: customColors.gray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14.6, right: 14.6, bottom: 14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing '
                            'and typesetting industry. Lorem Ipsum has been...',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Divider(
                            color: customColors.gray,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Comentarios',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Visitas',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    // elevation: 40,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profiles_photos/defaultFemenino.png'),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.sentiment_dissatisfied),
                            color: Colors.white,
                          ),
                          title: Text(
                            'Anónimo-ABC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '10-Nov-2019',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                            style: TextStyle(
                                color: customColors.gray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14.6, right: 14.6, bottom: 14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing '
                            'and typesetting industry. Lorem Ipsum has been...',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Divider(
                            color: customColors.gray,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Comentarios',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Visitas',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    // elevation: 40,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profiles_photos/defaultFemenino.png'),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.sentiment_dissatisfied),
                            color: Colors.white,
                          ),
                          title: Text(
                            'Anónimo-ABC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '10-Nov-2019',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                            style: TextStyle(
                                color: customColors.gray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14.6, right: 14.6, bottom: 14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing '
                            'and typesetting industry. Lorem Ipsum has been...',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Divider(
                            color: customColors.gray,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Comentarios',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Visitas',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    // elevation: 40,
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profiles_photos/defaultFemenino.png'),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.sentiment_dissatisfied),
                            color: Colors.white,
                          ),
                          title: Text(
                            'Anónimo-ABC',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '10-Nov-2019',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                            style: TextStyle(
                                color: customColors.gray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14.6, right: 14.6, bottom: 14.6),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing '
                            'and typesetting industry. Lorem Ipsum has been...',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Divider(
                            color: customColors.gray,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Comentarios',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '568',
                                    style: TextStyle(
                                      color: customColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Visitas',
                                      style: TextStyle(
                                        color: customColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print('Agregar Post se ha presionado'),
        ),
      ),
    );
  }
}
