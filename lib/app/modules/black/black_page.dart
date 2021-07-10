import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularapp/app/modules/black/black_store.dart';
import 'package:flutter/material.dart';

class BlackPage extends StatefulWidget {
  final String title;
  const BlackPage({Key? key, this.title = 'BlackPage'}) : super(key: key);
  @override
  BlackPageState createState() => BlackPageState();
}

class BlackPageState extends State<BlackPage> {
  final BlackStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
      ),
    );
  }
}
