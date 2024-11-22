import 'package:flutter/material.dart';
import 'package:horimap/rooms.dart';
import 'package:horimap/Map.dart';

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
            const Spacer(),
            Container(
              height: height * 0.1,
              width: width * 0.1,
              child: Image.asset("images/densan.png"),
            ),
            const Text("制作者 : Alice（電算機研究部）"),
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
