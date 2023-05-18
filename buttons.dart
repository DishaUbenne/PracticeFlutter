import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("An app with buttons"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            child: Icon(
              Icons.navigation,
              color: Colors.yellowAccent,
            ),
            // shape: RoundedRectangleBorder()),
            /* shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            foregroundColor: Colors.yellow),
            */
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.purple, width: 4.0))),
      ),
    );
  }
}
