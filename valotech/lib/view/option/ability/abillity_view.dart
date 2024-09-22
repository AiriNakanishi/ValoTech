import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';

class AbilityOption extends StatefulWidget {
  //Home画面でのMapの表示
  final String lang;
  final JpnEngList mapSelect;
  final JpnEngList characterSelect;

  const AbilityOption(
      {super.key,
      required this.lang,
      required this.mapSelect,
      required this.characterSelect});

  @override
  State<AbilityOption> createState() => _AbilityOptionState();
}

class _AbilityOptionState extends State<AbilityOption> {
  late String lang;
  late JpnEngList mapSelect;
  late JpnEngList characterSelect;

  @override
  void initState() {
    super.initState();
    // 受け取ったデータを状態を管理する変数に格納
    lang = widget.lang;
    mapSelect = widget.mapSelect;
    characterSelect = widget.characterSelect;
    debugPrint('mapSelect: ${mapSelect.jpn}'); // デバッグ用
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
        title: Text(mapSelect.jpn.isNotEmpty && characterSelect.jpn.isNotEmpty
            ? '[${getDisplayText(mapSelect)}]-[${getDisplayText(characterSelect)}]'
            : '[No Map Selected]-[No Character Selected]'),
        //title: Text(mapName.jpn),
      ),
      backgroundColor: AppColor.ui.background,
      body: Center(
        child: Column(
          children: [
            const Text('Ability Select'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min, //Rowが子供たちに必要なだけの幅を取るように指示する
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.brown,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
