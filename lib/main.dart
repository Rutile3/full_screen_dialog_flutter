import 'package:flutter/material.dart';

import 'package:full_screen_dialog/fullScreenDialogPage.dart';
import 'package:full_screen_dialog/nextPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Home Page'),
            RaisedButton(
              child: const Text('Next Page'),
              onPressed: () => _onPressedNextPage(context),
            ),
            RaisedButton(
              child: const Text('Full Screen Dialog Page'),
              onPressed: () => _onPressedFullScreenDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressedNextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => NextPage(),
      ),
    );
  }

  void _onPressedFullScreenDialog(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FullScreenDialogPage(),
        fullscreenDialog: true, // true だとモーダル遷移になる
      ),
    );
  }
}
