import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';

class CharacterOption extends StatefulWidget {
  //Home画面でのMapの表示
  final JpnEngList mapSelect;

  const CharacterOption({super.key, required this.mapSelect});

  @override
  State<CharacterOption> createState() => _CharacterOptionState();
}

class _CharacterOptionState extends State<CharacterOption> {
  late JpnEngList mapName;
  static JpnEngList characterSelect = JpnEngList('', '');

  Map<String, bool> charaRolePress = {
    for (String i in CharacterRole.characterRole) i: false
  };

  Map<JpnEngList, bool> charalistPress = {
    for (JpnEngList i in CharacterName.characterName) i: false
  };

  @override
  void initState() {
    super.initState();
    // 受け取ったデータを状態を管理する変数に格納
    mapName = widget.mapSelect;
    debugPrint('mapSelect: ${mapName.jpn}'); // デバッグ用
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            mapName.jpn.isNotEmpty ? '[${mapName.jpn}]' : '[No Map Selected]'),
        //title: Text(mapName.jpn),
      ),
      body: Center(
        child: Column(
          children: [
            Wrap(
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
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/character/${key.eng}.png'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.white
                                .withOpacity(charalistPress[key]! ? 0.5 : 0.1),
                            BlendMode.srcATop,
                          ),
                        ),
                      ),
                      child: Text(
                        key.jpn,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
