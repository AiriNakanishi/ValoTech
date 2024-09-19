import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';

import 'package:valotech/view/firstmain/homescreen_base.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // ナビゲーションバーのタップで表示する画面を選択するための関数
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // 表示するウィジェットをリストとして保持
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), //定点画面
    Text('Wall Bang'), //壁抜き画面
    Text('sound'),
    Text('time'),
    Text('setting'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('ValoTech'),
      ),
      extendBodyBehindAppBar: true,
      //backgroundColor: AppColor.brand.secondary,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex), // 選択された画面を表示
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ability',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: 'wallbang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'sound',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_empty),
            label: 'time',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.brand.secondary, // 選択されたアイテムの色
        onTap: _onItemTapped, // タップされたときの処理
      ),
    );
  }
}
