import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_chat/screens/home/home_screen.dart';
import 'package:flutter_app_chat/screens/signin/sign_google.dart';

import 'package:flutter_app_chat/share/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (_) => MyHomePage(),
        ChatScreen.id: (_) => ChatScreen(),
      },
      title: 'Chat Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}
