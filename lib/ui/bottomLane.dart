import 'package:flutter/material.dart';

class BottomLane extends StatefulWidget{
  State<StatefulWidget> createState() {
    return _BottomLaneListState();
  }
}
class _BottomLaneListState extends State<BottomLane> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          height: 350.0,
          child: ListView(
            padding: const EdgeInsets.only(left: 25.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[

            ],
          ),
        )
      ],
    );
  }
}