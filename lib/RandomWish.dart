import 'package:flutter/material.dart';
import 'randomjson.dart';

class _RandomWishState extends State<RandomWish> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getRandomJson(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}


class RandomWish extends StatefulWidget {
  @override
  State<RandomWish> createState() => _RandomWishState();
}