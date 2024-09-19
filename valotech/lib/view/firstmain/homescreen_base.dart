import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';

import 'package:valotech/view/option/ability/abillity_view.dart';
import 'package:valotech/view/option/atkdf/atkdf_view.dart';
import 'package:valotech/view/option/map/map_view.dart';

class HomeScreen extends StatelessWidget {
  //Home画面でのMapの表示
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: <Widget>[
        MapOption(),
        //CharacterOption(),
        AtkDfOption(),
        AbillityOption(),
        SizedBox(
          width: 100,
          height: 1000,
          child: Card(
            color: AppColor.brand.secondary,
          ),
        ),
        const Text('data'),
      ],
    );
  }
}
