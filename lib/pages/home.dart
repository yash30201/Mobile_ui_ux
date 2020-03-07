import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileuiux/classes/Item.dart';
import 'dart:math' as math;
import 'package:mobileuiux/widgets/card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> bills = <Item>[
    const Item(
      name: 'BUSINESS',
      icon: Icon(
        Icons.business,
        color: Colors.white38,
      ),
    ),
    const Item(
      name: 'OTHER',
      icon: Icon(
        Icons.all_inclusive,
        color: Colors.white38,
      ),
    )
  ];
  Item selectedBill ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedBill = bills.elementAt(0);
  }
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(

            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.business),
                text: 'CORPORATES'
              ),
              Tab(
                  icon: Icon(Icons.home),
                  text: 'CORPORATES'
              ),
            ],
          ),
          title: Text(''),
//        backgroundColor: Colors.black,
        ),
        body:Container(
          color: Colors.grey[200],
          child: TabBarView(
            children: <Widget>[
              Container(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context,index){
                    return Card1();
                  },
                )
              ),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black87,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(
                  height: 400.0,
                  child: DrawerHeader(
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(0.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/avtar.png'),
                            radius: 70.0,
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'JHON DOE',
                            style: TextStyle(
//                          color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                          SizedBox(height: 40.0,),
                          Text(
                            'DEFAULT BILL',
                            style: TextStyle(
                              color: Colors.white24,
                              fontSize: 13
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 300,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            padding: EdgeInsets.fromLTRB(10, 0,0,0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white38,
                              )
                            ),
                            child: DropdownButtonHideUnderline(

                              child: ButtonTheme(
                                alignedDropdown: true,
                                child: DropdownButton<Item>(
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 40,
                                    color: Colors.white38,
                                  ),
                                  value: selectedBill,
                                  onChanged: (Item value){
                                    setState(() {
                                      selectedBill = value;
                                    });
                                  },
                                  items: bills.map((Item bill){
                                    return DropdownMenuItem<Item>(
                                      value: bill,
                                      child: Row(
                                        children: <Widget>[
                                          bill.icon,
                                          SizedBox(width: 10,),
                                          Text(
                                            bill.name,
                                            style: TextStyle(
                                              color : Colors.white54,
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white38,
                  thickness:1,
                ),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white38,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    'PROFILE',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: Colors.white38,
                  thickness:1,
                ),
                ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Transform.rotate(
                      angle: math.pi,
                      child: Icon(
                        Icons.share,
                        color: Colors.white38,
                        size: 30,
                      ),
                    ),
                  ),
                  title: Text(
                    'SHARE',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white38,
                  thickness:1,
                ),
                ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Icon(
                      Icons.star,
                      color: Colors.white38,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    'RATE APP',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white38,
                  thickness:1,
                ),
                ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Icon(
                      Icons.lock_outline,
                      color: Colors.white38,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    'TERMS & CONDITIONS',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white38,
                  thickness:1,
                ),
                ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white38,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    'BUSINESS ACCOUNTS',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white38,
                  thickness:1,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
