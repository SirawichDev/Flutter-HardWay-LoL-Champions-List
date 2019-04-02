import 'package:flutter/material.dart';
import './topLane.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => {},
                ),
                FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  onPressed: () => {},
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 17.0,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Top Champ Pick',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: TabBar(
              controller: tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(.5),
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Top Lane',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Mid Lane',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bottom Lane',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Support',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(controller: tabController, children: <Widget>[
              TopLaneList(),
              TopLaneList(),
              TopLaneList(),
              TopLaneList(),
            ]),
          )
        ],
      ),
    );
  }
}
