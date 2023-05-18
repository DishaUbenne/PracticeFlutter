import 'package:flutter/material.dart';

class HelloInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloInputState();
}

class _HelloInputState extends State<HelloInput> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("A Statefull Widget")),
            body: Column(children: <Widget>[
              TextField(onChanged: (String string) {
                setState(() {
                  name = string;
                });
              }),
              Text('Hello ' + name + '!')
            ])));
    // throw UnimplementedError();
  }
}
