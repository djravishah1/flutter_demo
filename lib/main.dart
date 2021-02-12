import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String mytext = "Hello World";

  void _changeText(){
    setState((){
      if(mytext.startsWith("H")){
      mytext ="welcome to my app";
    }else{
        mytext = "Hello World";
      }
      });
  }

  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text (mytext, style: new TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),),
            new RaisedButton(
              child: new Text("Click", style: new TextStyle(
                color: Colors.white,
              ),),
              onPressed: _changeText,
              color: Colors.red,

            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget()
    );
  }
}