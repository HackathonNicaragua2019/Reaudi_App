import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Map<int, Color> primaryColorMap = {
    50: Color.fromRGBO(255, 63, 135, .1),
    100: Color.fromRGBO(255, 63, 135, .2),
    200: Color.fromRGBO(255, 63, 135, .3),
    300: Color.fromRGBO(255, 63, 135, .4),
    400: Color.fromRGBO(255, 63, 135, .5),
    500: Color.fromRGBO(255, 63, 135, .6),
    600: Color.fromRGBO(255, 63, 135, .7),
    700: Color.fromRGBO(255, 63, 135, .8),
    800: Color.fromRGBO(255, 63, 135, .9),
    900: Color.fromRGBO(255, 63, 135, 1),
  };

  Map<int, Color> primarySwatchMap = {
    50: Color.fromRGBO(67, 4, 117, .1),
    100: Color.fromRGBO(67, 4, 117, .2),
    200: Color.fromRGBO(67, 4, 117, .3),
    300: Color.fromRGBO(67, 4, 117, .4),
    400: Color.fromRGBO(67, 4, 117, .5),
    500: Color.fromRGBO(67, 4, 117, .6),
    600: Color.fromRGBO(67, 4, 117, .7),
    700: Color.fromRGBO(67, 4, 117, .8),
    800: Color.fromRGBO(67, 4, 117, .9),
    900: Color.fromRGBO(67, 4, 117, 1),
  };

  Map<int, Color> whiteMap = {
    50: Color.fromRGBO(242, 242, 242, .1),
    100: Color.fromRGBO(242, 242, 242, .2),
    200: Color.fromRGBO(242, 242, 242, .3),
    300: Color.fromRGBO(242, 242, 242, .4),
    400: Color.fromRGBO(242, 242, 242, .5),
    500: Color.fromRGBO(242, 242, 242, .6),
    600: Color.fromRGBO(242, 242, 242, .7),
    700: Color.fromRGBO(242, 242, 242, .8),
    800: Color.fromRGBO(242, 242, 242, .9),
    900: Color.fromRGBO(242, 242, 242, 1),
  };

  Map<int, Color> grayMap = {
    50: Color.fromRGBO(115, 115, 115, .1),
    100: Color.fromRGBO(115, 115, 115, .2),
    200: Color.fromRGBO(115, 115, 115, .3),
    300: Color.fromRGBO(115, 115, 115, .4),
    400: Color.fromRGBO(115, 115, 115, .5),
    500: Color.fromRGBO(115, 115, 115, .6),
    600: Color.fromRGBO(115, 115, 115, .7),
    700: Color.fromRGBO(115, 115, 115, .8),
    800: Color.fromRGBO(115, 115, 115, .9),
    900: Color.fromRGBO(115, 115, 115, 1),
  };

  Map<int, Color> blackMap = {
    50: Color.fromRGBO(13, 13, 13, .1),
    100: Color.fromRGBO(13, 13, 13, .2),
    200: Color.fromRGBO(13, 13, 13, .3),
    300: Color.fromRGBO(13, 13, 13, .4),
    400: Color.fromRGBO(13, 13, 13, .5),
    500: Color.fromRGBO(13, 13, 13, .6),
    600: Color.fromRGBO(13, 13, 13, .7),
    700: Color.fromRGBO(13, 13, 13, .8),
    800: Color.fromRGBO(13, 13, 13, .9),
    900: Color.fromRGBO(13, 13, 13, 1),
  };

  MaterialColor primaryColor() {
    return MaterialColor(0xFFFF3F87, primaryColorMap);
  }

  MaterialColor primarySwatch() {
    return MaterialColor(0xFF430475, primarySwatchMap);
  }

  MaterialColor white() {
    return MaterialColor(0xFFF2F2F2, whiteMap);
  }

  MaterialColor black() {
    return MaterialColor(0xFF0D0D0D, blackMap);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reaudi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primarySwatch(),
        primaryColor: primaryColor(),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
