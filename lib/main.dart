import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/conversations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Conversations(),
      // home: ,
    );
  }
}
