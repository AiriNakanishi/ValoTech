import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:valotech/view/option/character/character_view.dart';

class MapOption extends StatefulWidget {
  //Home画面でのMapの表示

  const MapOption({super.key});

  @override
  State<MapOption> createState() => _MapOptionState();
}

class _MapOptionState extends State<MapOption> {
  static JpnEngList mapSelect = JpnEngList('', '');
  Map<JpnEngList, bool> mapPress = {
    for (JpnEngList i in MapName.mapNameList) i: false
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Map Select'),
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
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                    image: AssetImage('assets/images/map/${key.eng}.png'),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(
                    //   Colors.white.withOpacity(mapPress[key]! ? 0.5 : 0.1),
                    //   BlendMode.srcATop,
                    // ),
                  ),
                ),
                child: BorderedText(
                  strokeColor: Colors.black,
                  child: Text(
                    key.jpn,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppColor.brand.primary,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
