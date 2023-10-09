import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/pages/screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.black,
            size: 28,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const TabBarPage(),
      },
    );
  }
}
