// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:valotech/constant/app_color.dart';

import 'package:valotech/view/firstmain/mainscreen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ValoTech',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: AppColor.ui.background),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ValoTech'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}
