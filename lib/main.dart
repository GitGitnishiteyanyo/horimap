import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoriMAP',
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  static const double _tytleTopMarginRatio = 0.1;
  static const double _tytleHeightRatio = 0.1;
  static const double _tytleBottomRatio = 0.1;
  static const double _buttonBottomRatio = 0.1;
  static const double _imageHeightRatio = 0.1;
  static const double _imageBottomRatio = 0.1;
  static const double _tytlesize = 0.1;
  static const double _buttonsize = 0.1;
  static int floor = 0;
  static int list_num = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('HoriMAP'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: _height * _tytleTopMarginRatio,
            ),
            const Text(
              "HoriMAP",
              style: TextStyle(fontSize: 80.0),
            ),
            SizedBox(
              height: _height * _tytleBottomRatio,
            ),
            ElevatedButton(
              onPressed: () {
                floor = 1;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              style: ElevatedButton.styleFrom(),
              child: Text(
                '1F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                floor = 2;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              style: ElevatedButton.styleFrom(),
              child: Text(
                '2F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                floor = 3;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              style: ElevatedButton.styleFrom(),
              child: Text(
                '3F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                floor = 4;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              style: ElevatedButton.styleFrom(),
              child: Text(
                '4F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                floor = 5;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              style: ElevatedButton.styleFrom(),
              child: Text(
                '5F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: _height * _buttonBottomRatio,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('検索'),
              onTap: () {},
            ),
            ListTile(
              title: Text('教室リスト'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoomListPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: _height * MyHomepage._imageHeightRatio,
          ),
          if (MyHomepage.floor == 1) Image.asset('images/1f.png'),
          if (MyHomepage.floor == 2) Image.asset('images/2f.png'),
          if (MyHomepage.floor == 3) Image.asset('images/3f.png'),
          if (MyHomepage.floor == 4) Image.asset('images/4f.png'),
          if (MyHomepage.floor == 5) Image.asset('images/5f.png'),
          SizedBox(
            height: _height * MyHomepage._imageBottomRatio,
          ),
          ElevatedButton(
            child: Text("前の画面に戻る"),
            onPressed: () {
              // ここにボタンを押した時に呼ばれるコードを書く
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}

class RoomListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: _height * MyHomepage._tytleTopMarginRatio,
          ),
          ListTile(
            title: Text('HR教室'),
            onTap: () {
              MyHomepage.list_num = 1;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RoomListPage2()));
            },
          ),
          ListTile(
            title: Text('教科系'),
            onTap: () {
              MyHomepage.list_num = 2;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RoomListPage2()));
            },
          ),
          ListTile(
            title: Text('事務系'),
            onTap: () {
              MyHomepage.list_num = 3;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RoomListPage2()));
            },
          ),
          ListTile(
            title: Text('その他'),
            onTap: () {
              MyHomepage.list_num = 4;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RoomListPage2()));
            },
          ),
        ],
      ),
    );
  }
}

class ListItemData {
  ListItemData();
}

class RoomListPage2 extends StatelessWidget {
  const RoomListPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> HRrooms = [
      's201',
      's202',
      's203',
      's204',
      's205',
      's206'
    ];
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
          title: Text("s202"),
        ),
      ],
    );
  }
}
