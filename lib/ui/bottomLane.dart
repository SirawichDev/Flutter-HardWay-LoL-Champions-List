import 'package:flutter/material.dart';

class BottomLane extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _BotLaneListState();
  }
}

class _BotLaneListState extends State<BottomLane> {
  ScrollController _scrollController;
  List descriptAll = [
    'Shauna Vayne is a deadly, remorseless Demacian monster hunter, who has dedicated her life to finding and destroying the demon that murdered her family.',
    'One of the ancient darkin, Varus was a deadly killer who loved to torment his foes, driving them almost to insanity before delivering the killing arrow.',
    'A Bilgewater captain famed for her looks but feared for her ruthlessness, Sarah Fortune paints a stark figure among the hardened criminals of the port city'

  ];
  String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeDesc);
    setState(() {
      description = descriptAll[0];
    });
  }
  changeDesc(){
    var value = _scrollController.offset.round();
    var desIndex = (value/200).round();
    setState(() {
      description=descriptAll[desIndex];
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          height: 400.0,
          child: ListView(
            padding: const EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              fetchBotLane('assets/vayne.png', '4800', 'Bot Lane', 'Vayne'),
              SizedBox(
                width: 25.0,
              ),
              fetchBotLane('assets/varus.png', '6300', 'Bot Lane', 'Varus'),
              SizedBox(
                width: 25.0,
              ),
              fetchBotLane('assets/misfor.png', '4800', 'Bot Lane', 'Miss Fortune '),
              SizedBox(
                width: 25.0,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0,top: 1.0),
          child: Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              fontSize: 17.0,
              color: Colors.black
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0,top: 5.0),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600
            ),
          ),
        )
      ],
    );
  }

  fetchBotLane(
      String imgPath, String chamPrice, String champType, String champName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 350.0,
          width: 250.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.deepPurpleAccent,
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
                            'Price',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            '\B' + chamPrice,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                                fontFamily: 'Montserrat',
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      )
                    ]),
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
                          champType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          champName,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 30.0,
                              color: Colors.white),
                        )
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
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: .7),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        Icons.directions_run,
                        color: Colors.white,
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
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: .7),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.transparent),
                      child: Icon(
                        Icons.details,
                        color: Colors.white,
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
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: .7),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
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
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: .7),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.transparent),
                      child: Icon(
                        Icons.toys,
                        color: Colors.white,
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
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.black),
            child: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
