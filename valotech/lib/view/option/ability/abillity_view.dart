import 'package:flutter/material.dart';

class AbillityOption extends StatelessWidget {
  //Home画面でのMapの表示
  const AbillityOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Abillity'),
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
    );
  }
}
