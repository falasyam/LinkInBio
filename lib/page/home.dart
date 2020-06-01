import 'package:flutter/material.dart';
import 'package:link/page/link_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static List<Widget> linkWidgets = <Widget>[
    LinkPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fala Syam', style: TextStyle(color: Colors.black)),
        elevation: 0.4,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: FlatButton(
              onPressed: null, 
              child: OutlineButton(
                onPressed: (){ launch('https://blog.falasyam.com');},
                child: Text('Visit Blog'),
              )
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: linkWidgets.elementAt(_selectedIndex),
        )
      ),
    );
  }
}