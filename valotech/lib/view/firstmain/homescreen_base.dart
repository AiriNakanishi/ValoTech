import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';

import 'package:valotech/view/option/atkdf/atkdf_view.dart';
import 'package:valotech/view/option/map/map_view.dart';

class HomeScreen extends StatefulWidget {
  //Home画面でのMapの表示
  final String lang;

  const HomeScreen({super.key, required this.lang});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String lang;

  @override
  void initState() {
    super.initState();
    // 受け取ったデータを状態を管理する変数に格納
    lang = widget.lang;
    debugPrint('mapSelect: ${lang}'); // デバッグ用
  }

  @override
  Widget build(BuildContext context) {
    return
        // ListView(
        //   shrinkWrap: true,
        //   physics: const ClampingScrollPhysics(),
        //   children: <Widget>[
        MapOption(lang: lang);
    //AtkDfOption(),
    //   ],
    // );
  }
}
