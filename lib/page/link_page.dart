import 'package:link/config/link.dart';
import 'package:link/widgets/link_widget.dart';
import 'package:link/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class LinkPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GridView.count(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),
          children: List.generate(
              link.length, (index) => LinkWidget(link[index], 0)),
        ),
      smallScreen: ListView.builder(
          itemCount: link.length,
          itemBuilder: (context, index) => LinkWidget(
              link[index], (index == link.length - 1 ? 16.0 : 0))),
    );
  }
}