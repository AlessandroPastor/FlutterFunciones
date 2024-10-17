import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Center Widget')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Espaciado uniforme
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centrar la columna
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Texto centrado',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centrar la columna
            children: [
              Text('Expanded Widget'),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Center(child: Text('Elemento 1', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Center(child: Text('Elemento 2', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Center(child: Text('Elemento 3', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

