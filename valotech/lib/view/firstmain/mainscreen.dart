import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:valotech/constant/app_color.dart';
import 'package:valotech/view/firstmain/homescreen_base.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //int _selectedIndex = 0;

  //言語設定
  static String lang = 'jpn'; //日本語ver
  //static String lang = 'eng';//英語ver

  // ナビゲーションバーのタップで表示する画面を選択するための関数
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // 表示するウィジェットをリストとして保持
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(
      lang: lang,
    ), //定点画面
    Text('Wall Bang'), //壁抜き画面
    Text('sound'),
    Text('time'),
    Text('setting'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   //backgroundColor: AppColor.ui.white,
      //   centerTitle: false,
      //   title: Text(
      //     'Map Select',
      //     style: TextStyle(color: AppColor.text.blackMid),
      //   ),
      // ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.ui.background,

      body: PersistentTabView(
        context,
        screens: _widgetOptions, // 宣言した画面のリストを設定
        navBarStyle: NavBarStyle.style6, // navBarのstyleを設定
        backgroundColor: AppColor.ui.background,
        items: [
          // 画面数の分、「PersistentBottomNavBarItem」を設定
          PersistentBottomNavBarItem(
            // 選択時のIcon
            icon: const Icon(
              Icons.home,
            ),
            // 非選択時のIcon
            inactiveIcon: const Icon(
              Icons.home_outlined,
            ),
            // ラベル
            title: 'ability',
            // 選択時のColor
            activeColorPrimary: Colors.red,
            // 非選択時のColor
            inactiveColorPrimary: AppColor.ui.white,
            contentPadding: 0,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.bolt,
            ),
            inactiveIcon: const Icon(
              Icons.bolt_outlined,
            ),
            title: 'wallbang',
            activeColorPrimary: Colors.red,
            inactiveColorPrimary: AppColor.ui.white,
            contentPadding: 0,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.music_note,
            ),
            inactiveIcon: const Icon(
              Icons.music_note_outlined,
            ),
            title: 'sound',
            activeColorPrimary: Colors.red,
            inactiveColorPrimary: AppColor.ui.white,
            contentPadding: 0,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.hourglass_full,
            ),
            inactiveIcon: const Icon(
              Icons.hourglass_empty_outlined,
            ),
            title: 'time',
            activeColorPrimary: Colors.red,
            inactiveColorPrimary: AppColor.ui.white,
            contentPadding: 0,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            inactiveIcon: const Icon(
              Icons.settings_outlined,
            ),
            title: 'setting',
            activeColorPrimary: Colors.red,
            inactiveColorPrimary: AppColor.ui.white,
            contentPadding: 0,
          ),
        ],
      ),

      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex), // 選択された画面を表示
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'ability',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bolt),
      //       label: 'wallbang',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.music_note),
      //       label: 'sound',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.hourglass_empty),
      //       label: 'time',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'setting',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: AppColor.brand.secondary, // 選択されたアイテムの色
      //   onTap: _onItemTapped, // タップされたときの処理
      // ),
    );
  }
}
