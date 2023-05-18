/*Gesture and Navigation and assignment
//1.Hello World Click me

import 'package:flutter/material.dart';

void main() {
  runApp(new FirstFlutterApp());
}

class FirstFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String strStringData = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: new Center(
          child: new Expanded(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(strStringData),
                new ElevatedButton(
                  child: new Text("Click me"),
                  onPressed: onButtonPressed,
                )
              ],
            ),
          ),
        ));
  }

  void onButtonPressed() {
    setState(() {
      strStringData = "Hello World";
    });
  }
}
//2. Elevated Button

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: null,
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Hello, Code Mag!'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}








//3.Calculator


import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Text(
                'Output: $_result',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: _controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Number 1',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Number 2',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('+'),
                    onPressed: () {
                      setState(() {
                        int num1 = int.parse(_controller1.text);
                        int num2 = int.parse(_controller2.text);
                        _result = (num1 + num2).toString();
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text('-'),
                    onPressed: () {
                      setState(() {
                        int num1 = int.parse(_controller1.text);
                        int num2 = int.parse(_controller2.text);
                        _result = (num1 - num2).toString();
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('*'),
                    onPressed: () {
                      setState(() {
                        int num1 = int.parse(_controller1.text);
                        int num2 = int.parse(_controller2.text);
                        _result = (num1 * num2).toString();
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text('/'),
                    onPressed: () {
                      setState(() {
                        int num1 = int.parse(_controller1.text);
                        int num2 = int.parse(_controller2.text);
                        _result = (num1 / num2).toString();
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Clear'),
                onPressed: () {
                  setState(() {
                    _controller1.text = '';
                    _controller2.text = '';
                    _result = '';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Sign In form
import 'package:flutter/material.dart';

void main() {
  runApp(RunMyApp());
}

class RunMyApp extends StatelessWidget {
  const RunMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Sign in Form'),
            ),
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),
              SizedBox(height: 40.0),
              Center(child: Text('Sign In'))
            ])));
  }
} 



//ID card
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/photo.jpg'),
            ),
            Text(
              'Disha UB',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            Text(
              'DATA ANALYST',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+91 91482 34567',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'dishaubenne@email.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//main.dart (Stack Navigation)
import 'package:flutter/material.dart';
import './Files/ScreenA.dart';
import './Files/ScreenB.dart';
import './Files/ScreenC.dart';

void main() {
  runApp(MyPushPopApp());
//or run MyNamedNavigationApp()
}

class MyPushPopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      debugShowCheckedModeBanner: false,
      home: MyNormalNavigation(),
    );
  }
}

class MyNormalNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Second Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SecondScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Home Screen'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
/* class MyNamedNavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'ScreenA',
      routes: {
        'ScreenA': (context) => ScreenA(),
        'ScreenB': (context) => ScreenB(),
        'ScreenC': (context) => ScreenC(),
      },
    );
  }
}   */









ScreenA.dart
import 'package:flutter/material.dart';
class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen A'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Screen B'),
              onPressed: () {Navigator.pushNamed(context, 'ScreenB');}, ),
            ElevatedButton(
              child: Text('Screen C'),
              onPressed: () { Navigator.pushNamed(context, 'ScreenC');}, ),
          ],),),);}}

ScreenB.dart
import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('Screen A'),
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenA');
              },
            ),
            ElevatedButton(
              child: Text('Screen C'),
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenC');
              },
            ),
          ],
        ),
      ),
    );
  }
}

ScreenC.dart
 import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}


//drawer_navigation
main.dart
import 'package:flutter/material.dart';
import './Files/first_fragment.dart';
import './Files/second_fragment.dart';
import './Files/third_fragment.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: HomePage(),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Badge", Icons.badge),
    new DrawerItem("Calendar", Icons.calendar_today_outlined),
    new DrawerItem("Dashboard", Icons.dashboard)
  ];
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int selectedDrawerIndex = 0;
  getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FirstFragment();
      case 1:
        return new SecondFragment();
      case 2:
        return new ThirdFragment();
      default:
        return new Text("Error");
    }
  }

  onSelectItem(int index) {
    setState(() => selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == selectedDrawerIndex,
        onTap: () => onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.drawerItems[selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Profile"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: getDrawerItemWidget(selectedDrawerIndex),
    );
  }
}
first_fragment.dart
import 'package:flutter/material.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("Hello Badge"),
    );
  }
}

second_fragment.dart
import 'package:flutter/material.dart';

class SecondFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("Hello Calendar"),
    );
  }
}

third_fragment.dart
import 'package:flutter/material.dart';
class ThirdFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("Hello Dashboard"),
    );
  }
}







//tab_navigation
main.dart
import 'package:flutter/material.dart';
import './Files/firstscreen.dart';
import './Files/secondscreen.dart';
void main() {
  runApp(BottomTabBarDemo());
}
class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contact_page), child: Text("Contacts")),
                Tab(icon: Icon(Icons.camera), child: Text("Media")),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
class BottomTabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(title: Text("This is a bottom Tab Bar")),
            body: TabBarView(
              children: [
                FirstScreen(),
                SecondScreen(),
              ],
            ),
            bottomNavigationBar: Material(
              color: Theme.of(context).colorScheme.primary,
              child: TabBar(tabs: const <Widget>[
                Tab(icon: Icon(Icons.contact_page), child: Text("Contact")),
                Tab(icon: Icon(Icons.camera), child: Text("Media")),
              ]),
            ),
          )),
    );
  }
}

firstscreen.dart
import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'It is a contact tab, which is responsible for displaying the contacts',
        style: TextStyle(fontSize: 32.0),
      )),
    );
  }
}
secondscreen.dart
import 'package:flutter/material.dart';  
class SecondScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Container(  
      child: Center(  
        child: Text('It is a second layout tab, which is responsible for taking pictures',  
        style: TextStyle(fontSize: 35.0),  
        ),  
      ),  
    );  
  }  
}  

//dialog_navigation
main.dart
import 'package:flutter/material.dart';
import 'Files/alertDialog.dart';
//import 'Files/simpleDialog.dart';
//import 'Files/showDialog.dart';
//import 'Files/customDialog.dart';

void main() {
  runApp(MyDialogApp());
}

class MyDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
        ),
      ),
      home: AlertDialogApp(),
      //SimpleDialogApp(),
      //ShowDialogApp(),
      //CustomDialogsApp(),
    );
  }
}

//alertDialog.dart
import 'package:flutter/material.dart';
class AlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog')),
      body: AlertDialog(
        title: Text('Welcome'),
        content: Text('Message for popup'),
        actions: [
          TextButton(
            onPressed: () {
              print('Pressed Cancel');
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              print('Accepted');
            },
            child: Text('Accept'),
          ),
        ],
      ),
    );
  }
}
//simpleDialog.dart
import 'package:flutter/material.dart';

class SimpleDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Dialog')),
      body: SimpleDialog(
        title: const Text('Message for popups'),
        children: <Widget>[ SimpleDialogOption(
            onPressed: () {print('Accepted');},
            child: const Text('Accept'),),
          SimpleDialogOption(
            onPressed: () {print('Pressed Cancel'); },
            child: const Text('Cancel'),),],),);}}

//showDialog.dart
import 'package:flutter/material.dart';

class ShowDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Show Dialog')),
      body: Center(
          child: ElevatedButton(
              child: Text("Show dialog"),
              onPressed: () {
                _showDialogBox(context);
              })),
    );
  }
}

void _showDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Show Dialog'),
          content: Text('Message on the PopUp'),
          actions: <Widget>[
            TextButton(onPressed: () { _dismissDialog(context);},
            child: Text('Close')),
            TextButton(onPressed: () {_dismissDialog(context);},
            child: Text('Cancel'),)],);});}


_dismissDialog(BuildContext context) {
  Navigator.pop(context);
}
//customDialog.dart
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}

class CustomDialogsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog In Flutter"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialogBox(
                      img: new Image.asset(
                        'paris.jpg',
                        width: 50,
                        height: 50,
                      ),
                      title: "Custom Dialog Demo",
                      descriptions: "Hi all this is a custom dialog in flutter",
                      text: "Yes",
                    );
                  });
            },
            child: Text("Custom Dialog"),
          ),
        ),
      ),
    );
  }
}

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;
  const CustomDialogBox(
      {Key? key,
      required this.title,
      required this.descriptions,
      required this.text,
      required this.img})
      : super(key: key);
  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: Constants.padding,
              top: Constants.avatarRadius + Constants.padding,
              right: Constants.padding,
              bottom: Constants.padding),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.descriptions,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      widget.text,
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.avatarRadius,
            child: ClipRRect(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.avatarRadius)),
                child: Image.asset("Images/paris.jpg")),
          ),
        ),
      ],
    );
  }
}

//Text buttons- TextButtonExample.dart   - buttoned_app (Flutter App)
class TextButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App with Text Button'),
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'Flutter',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            print('Pressed');
          },
          onLongPress: () {
            print('Long press');
          },        ),      ),    );   } }

//main.dart
import 'package:flutter/material.dart';
import './Files/TextB.dart';
void main(List<String> args) => runApp(new MainApp());
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Main App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Using Table widgets'),
            ),
            body: TextButtonExample())));
  }
}

//TextButtonApp Theme
import 'package:flutter/material.dart';
class MyTextButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App with Text Button',
      home: TextButtonExample(),
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),        ),      ),    );  }}

//Elevated Button
import 'package:flutter/material.dart';
class ElevatedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated Buttons'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('FLutter'),
          onPressed: () {
            print('Pressed');
          },
          onLongPress: () {
            print('Long Pressed');
          },         )       ),    );  } }
/*
class MyElevatedButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App with Elevated Buttons',
      home: ElevatedButtonExample(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.pinkAccent,
          ),        ),      ),    );  }}
*/


//OutlineButton.dart
import 'package:flutter/material.dart';

//backgroundColor: Colors.cyan,
class OutlinedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App with Outlined Button'),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('Flutter'),
          onPressed: () {
            print('Pressed');
          },        ),      ),    );  } }

/*
class MyOutlinedButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App with Outlined Button',
        home: OutlinedButtonExample(),
        theme: ThemeData(
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              primary: Colors.brown,
              shadowColor: Colors.red,
              elevation: 50,
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontStyle: FontStyle.italic),
            ),          ),        )); }  }
*/

import 'package:flutter/material.dart';

class MyIconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App with Icon Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: IconButtonExample(),
    );
  }
}
// IconButton
class IconButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Button'),
      ),
      body: Center(
        child: Ink(
          height: 200.0,
          width: 100.0,
          decoration: ShapeDecoration(
            color: Colors.tealAccent,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Icon(
              Icons.directions_transit,
            ),
            iconSize: 50,
            color: Colors.green,
            splashColor: Colors.purple,
            onPressed: () {
              print('Pressed');
            },
          ),
        ),
      ),
    );
  }
}
//CupertinoButton
import 'package:flutter/cupertino.dart';

class CupertinoButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Flutter'),
        trailing: CupertinoButton(
          child: Icon(CupertinoIcons.arrow_2_circlepath_circle_fill),
          onPressed: () {
            print('pressed');
          },
          padding: EdgeInsets.zero,
        ), ),
      child: Container(),
    );}}


//FloatingActionButton
import 'package:flutter/material.dart';

class MyFloatingButtonApp extends StatefulWidget {
  @override
  MyFloatingButtonAppState createState() => MyFloatingButtonAppState();
}

class MyFloatingButtonAppState extends State<MyFloatingButtonApp> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text(
          "FloatingAction Button",
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Floating action button pressed this many times"),
            Text(
              "$i",
              textScaleFactor: 3,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            i++;
          });
        },
      ),
    );
  }
}





//CustomWidget
import 'package:flutter/material.dart';

class GesturedWidget extends StatefulWidget {
  @override
  GestureWidgetState createState() => GestureWidgetState();
}

class GestureWidgetState extends State<GesturedWidget> {
  int taps = 0;
  int doubletaps = 0;
  int longpress = 0;
  double posX = 0.0;
  double posY = 0.0;
  double boxSize = 150.0;

  @override
  Widget build(BuildContext context) {
    if (posX == 0.0) {
      center(context);
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Gesture Control"),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              taps++;
            });
          },
          onDoubleTap: () {
            setState(() {
              doubletaps++;
            });
          },
          onLongPress: () {
            setState(() {
              longpress++;
            });
          },
          onVerticalDragUpdate: (DragUpdateDetails value) {
            setState(() {
              double delta = value.delta.dy;
              posY += delta;
            });
          },
          onHorizontalDragUpdate: (DragUpdateDetails value) {
            setState(() {
              double delta = value.delta.dx;
              posX += delta;
            });
          },
          child: Stack(children: <Widget>[
            Positioned(
                left: posX,
                top: posY,
                child: Container(
                  width: boxSize,
                  height: boxSize,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                  ),
                ))
          ]),
        ),
        bottomNavigationBar: Material(
            color: Theme.of(context).primaryColorLight,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Taps: $taps, DoubleTaps: $doubletaps, LongPress: $longpress',
                style: Theme.of(context).textTheme.headline6,
              ),
            )));
  }

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 85.0;
    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}


//Animation
import 'package:flutter/material.dart';
class GesturedAnimation extends StatefulWidget {
  @override
  GestureAnimationState createState() => GestureAnimationState();
}
class GestureAnimationState extends State<GesturedAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  double posX = 0.0;
  double posY = 0.0;
  double boxSize = 0.0;
  final double fullBoxSize = 250.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 25000),
      vsync: this,
    );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );
    animation.addListener(() {
      setState(() {
        boxSize = fullBoxSize * animation.value;
      });
      center(context);
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    if (posX == 0.0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Control"),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails value) {
          setState(() {
            double delta = value.delta.dy;
            posY += delta;
          });
        },
        onHorizontalDragUpdate: (DragUpdateDetails value) {
          setState(() {
            double delta = value.delta.dx;
            posX += delta;
          });
        },
        child: Stack(children: <Widget>[
          Positioned(
              left: posX,
              top: posY,
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                ),
              ))
        ]),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30.0;
    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}

//MaterialTheme
import 'package:flutter/material.dart';
class MyThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.green,
        // Define the default font family.
        fontFamily: 'Monotype Coursiva',
        // Define the TextTheme that specifies the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
            headline5: TextStyle(
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Hind')),
      ),
      home: MyThemePage(),
    );
  }
}
class MyThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Example'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            'Themes contains the graphical appearances that makes the user interface more attractive.',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
              Theme.of(context).colorScheme.copyWith(secondary: Colors.blue),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}



//ScafoldWidget
import 'package:flutter/material.dart';
class MyScafoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Example'),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Scaffold Options',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Scaffold Lists',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Name'),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text('Email'),
              leading: Icon(Icons.mail),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0, child: Icon(Icons.add), onPressed: () {}),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {
            print(indexOfItem);
          }),
    );
  }
}


//Hello World and Flutter Logo

*/
