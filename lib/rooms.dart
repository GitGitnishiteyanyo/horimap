import 'package:flutter/material.dart';
import 'package:horimap/main.dart';
import 'package:horimap/Map.dart';

class RoomListPage extends StatelessWidget {
  static int list_num = 0;

  const RoomListPage({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HoriMAP'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * RoomListPage2._tytleTopMarginRatio * 0.3,
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
  const RoomListPage2({super.key, required this.roomNUM});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Room Select Page'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            SizedBox(
              height: height * _tytleTopMarginRatio * 0.3,
            ),
            if (roomNUM == 1) ...{
              ListTile(
                title: const Text('S201'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MapPage(floor: "images/s201.jpg")));
                },
              ),
              ListTile(
                title: const Text('S202'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s202.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S203'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s203.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S204'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s204.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S205'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s205.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S206'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s206.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S301'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s301.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S302'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s302.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S303'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s303.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S304'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s304.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S305'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s305.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S306'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s306.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S401'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s401.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S402'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s402.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S403'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s403.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S404'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s404.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S405'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s405.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('S406'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/s406.jpg",
                              )));
                },
              ),
            },
            if (roomNUM == 2) ...{
              ListTile(
                title: const Text('生物教室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/seibutu.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('化学教室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/kagaku.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('自然科学教室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/sizen.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('物理地学教室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/buturi.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('CAI教室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/cai.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('授業研究室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/jugyoken.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('CALL教室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/call.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('被服室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/hihuku.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('試食・調理室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/sishoku.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('アトリエ'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/atorie.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('小ホール'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/shouho.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('アリーナ'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/ari.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('書道室・和室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/shodo.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('演習室1・2'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/enshu12.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('演習室3・4'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/enshu34.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('演習室5'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/enshu5.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('演習室6'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/enshu6.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('演習室7・8'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/enshu78.jpg",
                              )));
                },
              ),
            },
            if (roomNUM == 3) ...{
              ListTile(
                title: const Text('職員室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/shokuin.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('事務室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/jimu.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('進路資料室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/sinro.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('校長室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/koutyo.jpg",
                              )));
                },
              ),
            },
            if (roomNUM == 4) ...{
              ListTile(
                title: const Text('保健室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/hoken.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('図書館'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/tosho.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('カフェテリア'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/kafe.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('ラーニングコモンズ'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/rakomo.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('講堂'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/koudo.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('アトリウム'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/ato.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('自習室'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/jishu.jpg",
                              )));
                },
              ),
              ListTile(
                title: const Text('トレーニングルーム'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapPage(
                                floor: "images/tore.jpg",
                              )));
                },
              ),
            },
          ],
        ));
  }
}
