import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('TextField'),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           TextField(
             controller: myController,
             decoration: InputDecoration(
               border: InputBorder.none,
               hintText: 'Input goes here!'
             ),
           ),
           Text(
               'Your input is'
           ),
           FloatingActionButton(
             child: Text('act'),
             onPressed: () {

               return showDialog(
                 context: context,
                 builder: (context) {

                   return AlertDialog(
                     content: Text(myController.text),
                   );

                 }
               );

             },
           ),
         ],
       ),
     ),
   );


  }
}
