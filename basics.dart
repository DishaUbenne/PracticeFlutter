/*unit2
Fancy
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
//buttons
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
//HelloWorld
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
  }
}
//parameter passing time
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


//image
import 'package:flutter/material.dart';

class IcecreamImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage ice = AssetImage('assets/images/icecream.png');
    Image image = Image(
      image: ice,
      width: 150.0,
      height: 150.0,
      //fit: BoxFit.cover,
    );
    return Container(child: image);
  }
}

//network image
import 'package:flutter/material.dart';

class Network extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Network Image",
        home: Scaffold(
            appBar: AppBar(title: Text("Network Image")),
            body: Container(
              alignment: Alignment.center,
              child: Image.network(
                  'https://mrdoreswamy.com/wp-content/uploads/2022/01/DR.-M-R-DORESWAMY-700X500-v1.jpg'),
            ))));
    
  }
}

//radio
import 'package:flutter/material.dart';

class MyRadioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App with RadioButtons',
      home: RadioExample(),
    );
  }
}

class RadioExample extends StatefulWidget {
  @override
  State createState() => new _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  int? _groupValue;
  late List<FocusNode> _focusNodes;
  @override
  // ignore: must_call_super
  void initState() {
    _focusNodes = Iterable<int>.generate(3).map((e) => FocusNode()).toList();
    _focusNodes[0].requestFocus();
  }

  Widget _buildItem(String text, int value, FocusNode focusNode) {
    return ListTile(
      title: Text(text),
      leading: Radio<int>(
        groupValue: _groupValue,
        value: value,
        onChanged: (int? value) {
          setState(() {
            _groupValue = value;
          });
        },
        hoverColor: Colors.yellow,
        activeColor: Colors.pink,
        focusColor: Colors.purple,
        fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.orange;
          } else if (states.contains(MaterialState.selected)) {
            return Colors.teal;
          }
          if (states.contains(MaterialState.focused)) {
            return Colors.blue;
          } else {
            return Colors.black12;
          }
        }),
        overlayColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.lightGreenAccent;
          }
          if (states.contains(MaterialState.focused)) {
            return Colors.brown;
          } else {
            return Colors.white;
          }
        }),
        splashRadius: 25,
        toggleable: true,
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        focusNode: focusNode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('App with Radio Buttons'),
      ),
      body: Column(
        children: [
          _buildItem("One", 1, _focusNodes[0]),
          _buildItem("Two", 2, _focusNodes[1]),
          _buildItem("Three", 3, _focusNodes[2]),
        ],
      ),
    );
  }
}

//RichText
import 'package:flutter/material.dart';

class richtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("An app with Rich Text"),
        ),
        body: Container(
          child: RichText(
            text: TextSpan(
              text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                    text: 'bold',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' world!'),
              ],
            ),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
*/

               
