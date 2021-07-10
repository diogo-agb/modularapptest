import 'package:flutter_modular/flutter_modular.dart';

import 'package:modularapp/app/modules/yellow/yellow_store.dart';
import 'package:flutter/material.dart';

class YellowPage extends StatefulWidget {
  final String title;
  const YellowPage({Key? key, this.title = 'YellowPage'}) : super(key: key);
  @override
  YellowPageState createState() => YellowPageState();
}

class YellowPageState extends State<YellowPage> {
  final YellowStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
