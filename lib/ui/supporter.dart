import 'package:flutter/material.dart';

class SupportList extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SupportListState();
  }
}

class _SupportListState extends State<SupportList> {
  ScrollController _scrollController;
  List descriptionAll = [
    'In the wastelands of Urtistan, there was once a great city. It perished long ago in a terrible Rune War, like most of the lands below the Great Barrier. ',
    'Sadistic and cunning, Thresh is an ambitious and restless spirit of the Shadow Isles. ',
    'A wanderer from the celestial dimensions beyond Mount Targon, Soraka gave up her immortality to protect the mortal races from their own more violent instincts. '
  ];
  String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeDescript);
    setState(() {
      description = descriptionAll[0];
    });
  }

  changeDescript() {
    var value = _scrollController.offset.round();
    var desIndex = (value / 200).round();

    setState(() {
      description = descriptionAll[desIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 400.0,
          child: ListView(
            padding: const EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              fetchSupportCard(
                  'assets/zilean.png', '4800', 'Support', 'Zilean'),
              SizedBox(
                width: 25.0,
              ),
              fetchSupportCard(
                  'assets/thresh.png', '6300', 'Support', 'Thresh'),
              SizedBox(
                width: 25.0,
              ),
              fetchSupportCard(
                  'assets/soraka.png', '4800', 'Support', 'Soraka'),
              SizedBox(
                width: 25.0,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 1.0),
          child: Text(
            'Description',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                fontSize: 17.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0,top: 1.0),
          child: Text(description,style: TextStyle(fontFamily: 'Montserrat',fontSize: 12.0,fontWeight: FontWeight.w600),),
        )
      ],
    );
  }

  fetchSupportCard(
      String imgPath, String chamPrice, String chamType, String chamName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 350.0,
          width: 250.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.tealAccent),
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
                              color: Colors.black),
                        ),
                        Text(
                          '\B' + chamPrice,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
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
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          chamType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          chamName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
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
                      padding: const EdgeInsets.all(20.0),
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
                      child: Icon(Icons.invert_colors),
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
                      child: Icon(Icons.graphic_eq),
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
                      child: Icon(Icons.camera),
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
                      child: Icon(Icons.zoom_out_map),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 100, top: 342.0),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.black,
            ),
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
