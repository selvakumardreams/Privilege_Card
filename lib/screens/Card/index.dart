import 'package:flutter/material.dart';
import 'package:privilege_card/components/CardImage.dart';
import 'styles.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key key}) : super(key: key);
  @override
  CardScreenState createState() => new CardScreenState();
}

class CardScreenState extends State<CardScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Card'),
      ),
        body: new Container(
            decoration: new BoxDecoration(image: null),
            child: new Container(
                child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child:  new CardImage(image: cardImage),
                ),
                new QrImage(
                  data: "TA0000000002B",
                  size: 200.0,
                ),
                new Text(
                  'Scan this on purchase'
                ),
              ],
            ))));
  }
}
