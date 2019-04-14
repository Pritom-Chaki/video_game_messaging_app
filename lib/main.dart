import 'package:flutter/material.dart';
import 'package:video_game_message_board_app/api/firebase_service.dart';
import 'package:video_game_message_board_app/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    FirebaseService _firebaseService = FirebaseService();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(firebaseService: _firebaseService),
    );
  }
}