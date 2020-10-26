import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("latihan list dan list view"),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    child: Text("tambah data"),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "data ke -" + counter.toString(),
                          style: TextStyle(fontSize: 30),
                        )); //memakai anonymous method
                        counter++;
                      });
                    },
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast(); //annonymous method
                        counter--;
                      });
                    },
                    child: Text("hapus data"),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
          )),
    );
  }
}
