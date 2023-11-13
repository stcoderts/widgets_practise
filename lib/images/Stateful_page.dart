import 'package:flutter/material.dart';

class Stateful_page extends StatefulWidget {
  const Stateful_page({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Stateful_page> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have come to this result: ',
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 25),
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _incrementCounter,
              heroTag: null,
            ),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              child: Image.asset('lib/images/minus.png'),
              onPressed: _decrementCounter,
              heroTag: null,
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonAnimator: FloatingActionButton(
      //   onPressed: _decrementCounter,
      //   tooltip: 'Decrement',
      //   child: Image.asset('lib/images/minus.g'),
      // ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
