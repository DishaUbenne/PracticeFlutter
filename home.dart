import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "hello world app",
        home: Scaffold(
            appBar: AppBar(title: Text("Hello in the AppBar")),
            body: Material(
                color: Colors.deepPurpleAccent,
                child: Center(
                    child: new Text(sayHello(),
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.yellow, fontSize: 46.0)))))));
    //throw UnimplementedError();
  }
}

String sayHello() {
  String hello;
  DateTime now = new DateTime.now();
  int hour = now.hour;
  int minute = now.minute;
  if (hour < 12) {
    hello = 'Good Morning';
  } else if (hour < 14) {
    hello = 'Good Afternoon';
  } else if (hour < 18) {
    hello = 'Good Evening';
  } else {
    hello = 'Good Night';
  }
  String minutes = (minute < 10) ? '0' + minute.toString() : minute.toString();
  return "Time now " + hour.toString() + ':' + minutes + '.\n' + hello;
}
