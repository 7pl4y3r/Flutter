import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: MyHomePage(title: 'My app',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _fruit = '';

  _setFruit(String newFruit) {

    setState(() {
      _fruit = newFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You love $_fruit'
            ),
            MaterialButton(
              child: Text('Apples'),
              onPressed: () => _setFruit('Apples'),
            ),
            MaterialButton(
              child: Text('Oranges'),
              onPressed: () =>_setFruit('Oranges'),
            ),
            RaisedButton(
              child: Text('Androids'),
              onPressed: () => _setFruit('Android'),
            ),
          ],
        ),
      ),
    );
  }
}
