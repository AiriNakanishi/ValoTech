import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';
import 'package:valotech/view/option/ability/abillity_view.dart';

class CharacterOption extends StatefulWidget {
  //Home画面でのMapの表示
  final String lang;
  final JpnEngList mapSelect;

  const CharacterOption(
      {super.key, required this.lang, required this.mapSelect});

  @override
  State<CharacterOption> createState() => _CharacterOptionState();
}

class _CharacterOptionState extends State<CharacterOption> {
  late String lang;
  late JpnEngList mapSelect;
  static JpnEngList characterSelect = JpnEngList('', '');

  Map<JpnEngList, bool> charalistPress = {
    for (JpnEngList i in CharacterName.characterName) i: false
  };

  @override
  void initState() {
    super.initState();
    // 受け取ったデータを状態を管理する変数に格納
    lang = widget.lang;
    mapSelect = widget.mapSelect;
    debugPrint('mapSelect: ${mapSelect.jpn}'); // デバッグ用
  }

  String getDisplayText(JpnEngList key) {
    if (lang == 'jpn') {
      return key.jpn;
    } else {
      return key.eng;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.ui.background,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: AppColor.text.white,
          fontSize: 20,
        ),
        iconTheme: IconThemeData(
          color: AppColor.ui.white, // 戻るボタン（アイコン）の色を白に設定
        ),
        title: Text(
          mapSelect.jpn.isNotEmpty
              ? 'Agent Select:[${getDisplayText(mapSelect)}]'
              : 'Agent Select:[No Map Selected]',
          style: TextStyle(),
        ),
        //title: Text(mapName.jpn),
      ),
      backgroundColor: AppColor.ui.background,
      body: ListView(
        children: [
          Center(
            child: Wrap(
              children: [
                for (JpnEngList key in charalistPress.keys)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        for (var entry in charalistPress.entries) {
                          if (key != entry.key) {
                            charalistPress[entry.key] = false;
                          }
                        }
                        charalistPress[key] = !charalistPress[key]!;
                        if (charalistPress[key] == true) {
                          characterSelect = key;
                          debugPrint(characterSelect.jpn);
                        }
                      });
                      if (characterSelect.jpn.isNotEmpty) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AbilityOption(
                              lang: lang,
                              mapSelect: mapSelect,
                              characterSelect: characterSelect,
                            ),
                          ),
                        );
                      } else {
                        debugPrint("Error: mapSelect is empty");
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColor.ui.themered, width: 1.5),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/character/${key.eng}.png'),
                          fit: BoxFit.cover,
                          // colorFilter: ColorFilter.mode(
                          //   Colors.white
                          //       .withOpacity(charalistPress[key]! ? 0.5 : 0.1),
                          //   BlendMode.srcATop,
                          // ),
                        ),
                      ),
                      // child: Text(
                      //   key.jpn,
                      //   style: const TextStyle(
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
