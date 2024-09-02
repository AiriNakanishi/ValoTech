import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';

class CharacterOption extends StatefulWidget {
  //Home画面でのMapの表示
  const CharacterOption({super.key});

  @override
  State<CharacterOption> createState() => _CharacterOptionState();
}

class _CharacterOptionState extends State<CharacterOption> {
  Map<String, bool> charaRolePress = {
    for (String i in CharacterRole.characterRole) i: false
  };

  Map<String, bool> duelistPress = {
    for (String i in CharacterName.duelistName) i: false
  };
  Map<String, bool> initiatorPress = {
    for (String i in CharacterName.initiatorName) i: false
  };
  Map<String, bool> controllerPress = {
    for (String i in CharacterName.controllerName) i: false
  };
  Map<String, bool> sentinelPress = {
    for (String i in CharacterName.sentinelName) i: false
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Character'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min, //Rowが子供たちに必要なだけの幅を取るように指示する
            children: <Widget>[
              for (String roleKey in charaRolePress.keys)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      for (var roleEntry in charaRolePress.entries) {
                        if (roleKey != roleEntry.key) {
                          charaRolePress[roleEntry.key] = false;
                        }
                      }
                      charaRolePress[roleKey] = !charaRolePress[roleKey]!;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColor.brand.secondary
                          .withAlpha(charaRolePress[roleKey]! ? 255 : 100),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      roleKey,
                    ),
                  ),
                ),
              // if (charaRolePress[roleKey])
              //   {
              //   for (String charaKey in charaRolePress.keys)
              //     GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           for (var charaEntry in charaRolePress.entries) {
              //             if (charaKey != charaEntry.key)
              //               charaRolePress[charaEntry.key] = false;
              //           }
              //           charaRolePress[charaKey] = !charaRolePress[charaKey]!;
              //         });
              //       },
              //       child: Container(
              //         height: 100,
              //         width: 100,
              //         alignment: Alignment.center,
              //         decoration: BoxDecoration(
              //           color: AppColor.brand.secondary
              //               .withAlpha(charaRolePress[charaKey]! ? 255 : 100),
              //           shape: BoxShape.circle,
              //         ),
              //         child: Text(
              //           charaKey,
              //         ),
              //       ),
              //     ),
              //   },
            ],
          ),
        ),
      ],
    );
  }
}
