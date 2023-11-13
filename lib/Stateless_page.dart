import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Stateless_page extends StatelessWidget {
  const Stateless_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(statelessText()),
        ),
        body: Image.asset('lib/images/hello1.jpg'), //   <-- image
      ),
    );
  }

  String statelessText() {
    return 'Hello, I am Sanjar\'s project\'s stateless page. I am grateful that it is honour to me :)';
  }
}
