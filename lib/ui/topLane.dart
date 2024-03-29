import 'package:flutter/material.dart';

class TopLaneList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TopLaneListState();
  }
}

class _TopLaneListState extends State<TopLaneList> {
  ScrollController _scrollController;
  List allDescribe = [
    'There is no greater symbol of Noxian might than Darius  the nation`s most feared and battle-hardened leader. Rising from humble origins to become the Hand of Noxus',
    'From the moment Cho`Gath first emerged into the harsh light of Runeterra`s sun, the beast was driven by the most pure and insatiable hunger. ',
    'A proud and noble soldier, Garen fights at the head of the Dauntless Vanguard. He is popular among his fellows, and respected well enough by his enemies'
  ];
  String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeDesc);
    setState(() {
      description = allDescribe[0];
    });
  }

  changeDesc() {
    var value = _scrollController.offset.round();
    var desIndex = (value / 200).round();
    setState(() {
      description = allDescribe[desIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 390.0,
          child: ListView(
            padding: const EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              fetchTopLaneCard(
                  'assets/darius3.png', '6300', 'Top Lane', 'Darius'),
              SizedBox(
                width: 25.0,
              ),
              fetchTopLaneCard(
                  'assets/cho.png', '4800', 'Top Lane', 'Cho`gath'),
              SizedBox(
                width: 25.0,
              ),
              fetchTopLaneCard(
                  'assets/garen.png', '3600', 'Top Lane', 'Garen'),
              SizedBox(
                width: 25.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 1.0),
          child: Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 17.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            description,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
                fontSize: 12.0),
          ),
        )
      ],
    );
  }

  fetchTopLaneCard(
      String imgPath, String chamPrice, String chamType, String chamName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 350.0,
          width: 250.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.pink),
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
                          'Price',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          '\B' + chamPrice,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.white,
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
                              color: Colors.white),
                        ),
                        Text(
                          chamName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                  child: Container(
                    color: Colors.white,
                  ),
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
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: .7),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.transparent),
                        child: Icon(
                          Icons.flash_on,
                          color: Colors.white.withOpacity(.8),
                          size: 20.0,
                        )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: .7),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.transparent),
                        child: Icon(
                          Icons.whatshot,
                          color: Colors.white.withOpacity(.8),
                          size: 20.0,
                        )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: .7),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.transparent),
                        child: Icon(
                          Icons.security,
                          color: Colors.white.withOpacity(.8),
                          size: 20.0,
                        )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: .7),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.transparent),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white.withOpacity(.8),
                          size: 20.0,
                        )),
//                    InkWell(
//                      onTap: () {},
//                      child: Container(
//                          height: 30.0,
//                          width: 30.0,
//                          decoration: BoxDecoration(
//                              color: Colors.transparent,
//                              border: Border.all(
//                                  color: Colors.white,
//                                  style: BorderStyle.solid,
//                                  width: .7),
//                              borderRadius: BorderRadius.circular(5.0)),
//                       ),
//                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 100.0,top: 335.0),
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.black),
              child: Center(
                child: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}
