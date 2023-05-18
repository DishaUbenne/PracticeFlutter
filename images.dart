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
