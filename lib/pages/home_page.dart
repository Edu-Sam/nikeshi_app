import 'package:flutter/material.dart';
import 'package:nikeshi/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nikesh Mini Market")
      ),
      drawer: HomeDrawer(),
    );
  }
}
