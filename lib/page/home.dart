import 'package:flutter/material.dart';
import 'package:link/page/link_page.dart';
import 'package:link/widgets/theme_inherited_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
        title: Text('Fala Syam', style: TextStyle()),
        elevation: 0.4,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 0.5),
            child: IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Feather.sun):Icon(Feather.moon),
              onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 0.8),
            child: FlatButton(
              onPressed: null, 
              child: OutlineButton(
                highlightElevation: 2.0,
                disabledBorderColor: Color(0xFF7A7A76),
                highlightedBorderColor: Color(0xFF7A7A76),
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