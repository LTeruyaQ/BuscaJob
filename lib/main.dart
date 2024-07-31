import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/login_screen_details.dart';
import 'screens/home_page.dart';
import 'screens/notification_page.dart';
import 'screens/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuscaJob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/login-details': (context) => LoginScreenDetails(),
        '/home': (context) => HomePage(),
        '/notifications': (context) => NotificationPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
