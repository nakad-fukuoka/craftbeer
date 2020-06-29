import 'package:craftbeer/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.map)),
                Tab(icon: Icon(Icons.format_list_numbered)),
                Tab(icon: Icon(Icons.pie_chart)),
              ],
            ),
            title: Container(
                child: Text('クラフトビールの世界'),
            ),
            actions: <Widget>[
              Icon(Icons.add),
              Icon(Icons.share),
            ],
          ),
          body: TabBarView(
            children: [
              Icon(Icons.map),
              Icon(Icons.confirmation_number),
              Icon(Icons.pie_chart),
            ],
          ),
        ),
      ),
    );
  }
}
