import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:horimap/rooms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const double _tytleTopMarginRatio = 0.1;

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage(floor: 1)));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage(floor: 2)));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage(floor: 3)));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage(floor: 4)));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage(floor: 5)));
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
  final int floor;
  const MapPage({Key? key, required this.floor}) : super(key: key);
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
          if (floor == 1) Image.asset('images/1f.png'),
          if (floor == 2) Image.asset('images/2f.png'),
          if (floor == 3) Image.asset('images/3f.png'),
          if (floor == 4) Image.asset('images/4f.png'),
          if (floor == 5) Image.asset('images/5f.png'),
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
  static int list_num = 0;
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RoomListPage2(roomNUM: 1)));
            },
          ),
          ListTile(
            title: Text('特別教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RoomListPage2(roomNUM: 2)));
            },
          ),
          ListTile(
            title: Text('事務系'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RoomListPage2(roomNUM: 3)));
            },
          ),
          ListTile(
            title: Text('その他'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RoomListPage2(roomNUM: 4)));
            },
          ),
        ],
      ),
    );
  }
}
