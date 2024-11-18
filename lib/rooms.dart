import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:horimap/main.dart';

class RoomListPage2 extends StatelessWidget {
  final int roomNUM;

  static const double _tytleTopMarginRatio = 0.1;
  static const double _tytleHeightRatio = 0.1;
  static const double _tytleBottomRatio = 0.1;
  static const double _buttonBottomRatio = 0.1;
  static const double _imageHeightRatio = 0.1;
  static const double _imageBottomRatio = 0.1;
  static const double _tytlesize = 0.1;
  static const double _buttonsize = 0.1;
  const RoomListPage2({Key? key, required this.roomNUM}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        SizedBox(
          height: _height * _tytleTopMarginRatio,
        ),
        if (roomNUM == 1) ...{
          ListTile(
            title: Text('S201'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('S202'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('S203'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('S204'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('S205'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('S206'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('S301'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('S302'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('S303'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('S304'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('S305'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('S306'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('S401'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
          ListTile(
            title: Text('S402'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
          ListTile(
            title: Text('S403'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
          ListTile(
            title: Text('S404'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
          ListTile(
            title: Text('S405'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
          ListTile(
            title: Text('S406'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
        },
        if (roomNUM == 2) ...{
          ListTile(
            title: Text('生物教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('化学教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('自然科学教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('物理地学教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('CAI教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('授業研究室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('CALL教室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('被服室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('試食・調理室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 3,
                          )));
            },
          ),
          ListTile(
            title: Text('アトリエ'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 5,
                          )));
            },
          ),
          ListTile(
            title: Text('小ホール'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 5,
                          )));
            },
          ),
          ListTile(
            title: Text('アリーナ'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
          ListTile(
            title: Text('書道室・和室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('演習室1・2'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('演習室3・4'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('演習室5'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('演習室6'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('演習室7・8'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
        },
        if (roomNUM == 3) ...{
          ListTile(
            title: Text('職員室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
          ListTile(
            title: Text('事務室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
          ListTile(
            title: Text('進路指導室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
          ListTile(
            title: Text('校長室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
        },
        if (roomNUM == 4) ...{
          ListTile(
            title: Text('保健室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
          ListTile(
            title: Text('図書館'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
          ListTile(
            title: Text('カフェテリア'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
          ListTile(
            title: Text('ラーニングコモンズ'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('講堂'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 5,
                          )));
            },
          ),
          ListTile(
            title: Text('アトリウム'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 1,
                          )));
            },
          ),
          ListTile(
            title: Text('自習室'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 2,
                          )));
            },
          ),
          ListTile(
            title: Text('トレーニングルーム'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapPage(
                            floor: 4,
                          )));
            },
          ),
        },
      ],
    ));
  }
}
