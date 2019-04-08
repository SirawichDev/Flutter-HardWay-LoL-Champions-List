import 'package:flutter/material.dart';

class MidLaneList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MidLaneListState();
  }
}

class _MidLaneListState extends State<MidLaneList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 400.0,
          child: ListView(
            padding: const EdgeInsets.only(left: 25.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              fetchMidLaneCard('assets/zed.png', '6300', 'Mid Lane', 'Zed'),
              SizedBox(
                width: 25.0,
              ),
              fetchMidLaneCard('assets/akali.png', '4800', 'Mid Lane', 'Akali'),
              SizedBox(
                width: 25.0,
              ),
              fetchMidLaneCard(
                  'assets/kata.png', '6300', 'Mid Lane', 'Katarina'),
              SizedBox(
                width: 25.0,
              )
            ],
          ),
        )
      ],
    );
  }

  fetchMidLaneCard(
      String imgPath, String chamPrice, String chamType, String chamName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 350.0,
          width: 250.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.grey,
            ),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'From',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          '\B' + chamPrice,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 200.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          chamType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(chamName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                  child: Container(color: Colors.white),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(23.0),
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: .7),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.transparent),
                      child: Icon(
                        Icons.whatshot,
                        color: Colors.black.withOpacity(.8),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: .7),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.transparent),
                      child: Icon(
                        Icons.flash_on,
                        color: Colors.black.withOpacity(.8),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: .7),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.transparent),
                      child: Icon(
                        Icons.block,
                        color: Colors.black.withOpacity(.8),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: .7),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        Icons.hourglass_empty,
                        color: Colors.black.withOpacity(.8),
                        size: 20.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 100.0, top: 337.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0), color: Colors.black),
            child: Center(
              child: Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
