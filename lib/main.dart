import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:horimap/rooms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const double _tytleTopMarginRatio = 0.1;

  const MyApp({super.key});

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

  const MyHomepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HoriMAP'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * _tytleTopMarginRatio,
            ),
            const Text(
              "HoriMAP",
              style: TextStyle(fontSize: 80.0),
            ),
            SizedBox(
              height: height * _tytleBottomRatio,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MapPage(floor: "images/1f.png")));
              },
              style: ElevatedButton.styleFrom(),
              child: const Text(
                '1F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MapPage(floor: "images/2f.png")));
              },
              style: ElevatedButton.styleFrom(),
              child: const Text(
                '2F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MapPage(floor: "images/3f.png")));
              },
              style: ElevatedButton.styleFrom(),
              child: const Text(
                '3F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MapPage(floor: "images/4f.png")));
              },
              style: ElevatedButton.styleFrom(),
              child: const Text(
                '4F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MapPage(floor: "images/5f.png")));
              },
              style: ElevatedButton.styleFrom(),
              child: const Text(
                '5F',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: height * _buttonBottomRatio,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('検索'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('教室リスト'),
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
  final String floor;
  const MapPage({super.key, required this.floor});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAP Page'),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: height * MyHomepage._imageHeightRatio,
          ),
          Image.asset(floor),
          SizedBox(
            height: height * MyHomepage._imageBottomRatio,
          ),
          ElevatedButton(
            child: const Text("前の画面に戻る"),
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

  const RoomListPage({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * MyHomepage._tytleTopMarginRatio,
          ),
          ListTile(
            title: const Text("<back"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: height * MyHomepage._tytleTopMarginRatio * 0.3,
          ),
          ListTile(
            title: const Text('HR教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RoomListPage2(roomNUM: 1)));
            },
          ),
          ListTile(
            title: const Text('特別教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RoomListPage2(roomNUM: 2)));
            },
          ),
          ListTile(
            title: const Text('事務系'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RoomListPage2(roomNUM: 3)));
            },
          ),
          ListTile(
            title: const Text('その他'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RoomListPage2(roomNUM: 4)));
            },
          ),
        ],
      ),
    );
  }
}

class kensaku extends StatelessWidget {
  static int list_num = 0;

  const kensaku({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
