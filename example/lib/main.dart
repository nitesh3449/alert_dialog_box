import 'package:alert_dialog_box/alert_dialog_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Alert Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          CustomAlertDialog.showCustomAlertBox(
              context: context,
              willDisplayWidget: Container(
                margin: const EdgeInsets.all(2.0),
                child: const Text('My custom alert box, used from example!!'),
              )
          );
        },
        tooltip: 'Show Custom Alert Box',
        child: const Icon(Icons.message),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
