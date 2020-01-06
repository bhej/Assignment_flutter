import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static const menuItems = <String>['Paris', 'London', 'LA'];

  final List<DropdownMenuItem<String>> _dropDownMenuItes = menuItems
      .map((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          ))
      .toList();

  String _selectedVal = 'Paris';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80.0,
          color: Colors.black,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey[900],
                    child: ClipOval(
                      child: IconButton(
                        tooltip: 'Account',
                        icon: const Icon(
                          Icons.account_balance,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        onPressed: () {
                          print('Account');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Music',
                    style: TextStyle(fontSize: 12.0,fontStyle: FontStyle.normal,color: Colors.white),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey[900],
                    child: ClipOval(
                      child: IconButton(
                        tooltip: 'Events',
                        icon: const Icon(
                          Icons.event,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        onPressed: () {
                          print('Events');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Events',
                    style: TextStyle(fontSize: 12.0,fontStyle: FontStyle.normal,color: Colors.white),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey[900],
                    child: ClipOval(
                      child: IconButton(
                        tooltip: 'Dashboard',
                        icon: const Icon(
                          Icons.dashboard,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        onPressed: () {
                          print('Dashboard');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 12.0,fontStyle: FontStyle.normal,color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      DropdownButton<String>(
                        style: TextStyle(color: Colors.white, fontSize: 28.0),
                        value: _selectedVal,
                        onChanged: (String newValue) {
                          setState(() {
                            _selectedVal = newValue;
                          });
                        },
                        items: _dropDownMenuItes,
                      ),
                    ],
                  ),
                  SizedBox(width: 40.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(width: 40.0),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[900],
                        child: ClipOval(
                          child: IconButton(
                            tooltip: 'Search',
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('Search pressed');
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[900],
                        child: ClipOval(
                          child: IconButton(
                            tooltip: 'Settings',
                            icon: const Icon(
                              Icons.settings_input_component,
                              color: Colors.white,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('Search pressed');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[900],
                        child: ClipOval(
                          child: IconButton(
                            tooltip: 'All',
                            icon: const Icon(
                              Icons.wb_sunny,
                              color: Colors.yellow,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('All');
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'All',
                        style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[900],
                        child: ClipOval(
                          child: IconButton(
                            tooltip: 'Food',
                            icon: const Icon(
                              Icons.fastfood,
                              color: Colors.yellow,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('Food');
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Food',
                        style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[900],
                        child: ClipOval(
                          child: IconButton(
                            tooltip: 'Sport',
                            icon: const Icon(
                              Icons.accessibility_new,
                              color: Colors.yellow,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('Sport');
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Sport',
                        style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[900],
                        child: ClipOval(
                          child: IconButton(
                            tooltip: 'Music',
                            icon: const Icon(
                              Icons.music_note,
                              color: Colors.yellow,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('Music');
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Music',
                        style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Popular Events',
                  style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.normal,color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 280.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           height:250.0,
                           width:250.0,
                           child: Image.asset('asset/paris.jpg'),
                         ),
                         SizedBox(height: 6.0),
                         Text(
                           'Fri, Dec 2020 - Mon,Dec 27th',
                           style: TextStyle(fontSize: 12.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.deepPurple
                           ),
                         ),
                         SizedBox(height: 6.0),
                         Text(
                           'Noctural and unusual visits',
                           style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.white
                           ),
                         ),
                         SizedBox(height: 6.0),
                         Text(
                           'Lovure',
                           style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,color: Colors.white
                           ),
                         ),
                       ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      width: 280.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height:250.0,
                            width:250.0,
                            child: Image.asset('asset/paris.jpg'),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Fri, Dec 2020 - Mon,Dec 27th',
                            style: TextStyle(fontSize: 12.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.deepPurple
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Noctural and unusual visits',
                            style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.white
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Lovure',
                            style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.normal,color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
