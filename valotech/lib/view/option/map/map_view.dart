import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:valotech/view/option/character/character_view.dart';

class MapOption extends StatefulWidget {
  //Home画面でのMapの表示
  final String lang;

  const MapOption({super.key, required this.lang});

  @override
  State<MapOption> createState() => _MapOptionState();
}

class _MapOptionState extends State<MapOption> {
  late String lang;
  static JpnEngList mapSelect = JpnEngList('', '');
  Map<JpnEngList, bool> mapPress = {
    for (JpnEngList i in MapName.mapNameList) i: false
  };

  @override
  void initState() {
    super.initState();
    // 受け取ったデータを状態を管理する変数に格納
    lang = widget.lang;
  }

  String getDisplayText(JpnEngList key) {
    if (lang == 'jpn') {
      return key.jpn;
    } else {
      return key.eng; // デフォルトは英語
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.ui.background,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text(
                'Map Select',
                style: TextStyle(color: AppColor.text.white),
              ),
              background: Container(
                color: AppColor.ui.background,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    //const Text('Map Select'),
                    for (JpnEngList key in mapPress.keys)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var entry in mapPress.entries) {
                              if (key != entry.key) mapPress[entry.key] = false;
                            }
                            mapPress[key] = !mapPress[key]!;
                            if (mapPress[key] == true) {
                              mapSelect = key;
                              debugPrint(mapSelect.jpn);
                            }
                          });
                          if (mapSelect.jpn.isNotEmpty) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CharacterOption(
                                  lang: lang,
                                  mapSelect: mapSelect,
                                ),
                              ),
                            );
                          } else {
                            debugPrint("Error: mapSelect is empty");
                          }
                        },
                        child: AspectRatio(
                          aspectRatio: 3 / 1,
                          child: Container(
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.text.blackMid),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/map/${key.eng}.png'),
                                fit: BoxFit.cover,
                                // colorFilter: ColorFilter.mode(
                                //   Colors.white.withOpacity(mapPress[key]! ? 0.5 : 0.1),
                                //   BlendMode.srcATop,
                                // ),
                              ),
                            ),
                            child: BorderedText(
                              strokeWidth: 4,
                              strokeColor: Colors.black,
                              child: Text(
                                getDisplayText(key),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.text.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
