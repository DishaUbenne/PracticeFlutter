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
    //throw UnimplementedErro
    //r();
  }
}
