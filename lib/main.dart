import 'package:flutter/material.dart';
import './card.dart' show DeveloperCard;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Developers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Developers"),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: isLandscape ? 3 : 2,
          children: developerCards,
        ),
      ),
    );
  }
}

/// TODO: add your card here
final developerCards = <Widget>[
  DeveloperCard(
    name: "Luke Pighetti",
    business: "Pighetti Design",
    image: AssetImage("assets/developers/luke_pighetti/avatar.jpg"),
  ),
];
