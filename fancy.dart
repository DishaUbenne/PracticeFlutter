import 'package:flutter/material.dart';

class FancyHelloWorldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Fancier app"),
        ),
        body: Container(
          child: new Column(
            children: [
              new Container(
                height: 100.0,
                width: 100.0,
                child: new FlutterLogo(
                  size: 100.0,
                ),
              ),
              new Container(
                child: Text('Hello World',
                    style: TextStyle(
                      fontSize: 35.8,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      height: 2.6,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.purple,
                      decorationStyle: TextDecorationStyle.solid,
                      backgroundColor: Colors.indigoAccent.withOpacity(0.2),
                      wordSpacing: 0.5,
                      letterSpacing: 0.5,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 4
                        ..color = Colors.black.withOpacity(0.8),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

               /*margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(15),
                color: Colors.lime.withOpacity(0.4),
                alignment: Alignment.center,
                child: Text(
                  'Hello World',
                  style: TextStyle(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4
                      //  ..style = PaintingStyle.fill
                      //  ..strokeWidth = 20
                      ..color = Colors.lightBlueAccent.withOpacity(0.7),
                    decoration: TextDecoration.overline,
                    decorationColor: Colors.purple,
                    decorationStyle: TextDecorationStyle.double,

                    height: 1.5,
                    fontSize: 67.8,
                    fontStyle: FontStyle.normal,
                    //fontWeight: FontWeight.bold,
                  ),
                ))));
    // throw UnimplementedError();
  }
}
*/