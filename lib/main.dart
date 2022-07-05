import 'package:flutter/material.dart';

import './screens/success_message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: SuccessMessage(
            title: 'Verification Complete',
            text:
                'You successfully created an account.\nLet\'s take the course.',
            showRegisterLink: true,
          ),
        ),
      ),
    );
  }
}
