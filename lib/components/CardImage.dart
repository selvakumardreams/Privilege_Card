import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final DecorationImage image;
  CardImage({this.image});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return (new Container(
      width: screenSize.width,
      height: screenSize.height / 3,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        image: image,
      ),
    ));
  }
}
