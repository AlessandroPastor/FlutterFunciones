import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
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
      appBar: AppBar(title: Text('ElevatedButton')),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB presionado');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los botones verticalmente
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton presionado');
              },
              child: Text('ElevatedButton'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10), // Espacio entre los botones
            Row(children: <Widget>[
              SizedBox(width: 20), // Espacio entre los botones
              TextButton(
                onPressed: () {
                  print('TextButton presionado');
                },
                child: Text('TextButton', style: TextStyle(color: Colors.white)), // Cambiar el color del texto
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(width: 20), // Espacio entre los botones

              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton presionado');
                },
                child: Text('OutlinedButton'),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontSize: 20),
                  side: BorderSide(color: Colors.blue, width: 2), // Define el borde
                ),
              ),
            ],
            ),
            SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: () {
                print('Botón con ícono y texto presionado');
              },
              icon: Icon(Icons.send),
              label: Text('Enviar'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              color: Colors.blue,
              iconSize: 40.0,
              onPressed: () {
                print('IconButton presionado');
              },
            ),
          ],
        ),
      ),
    );
  }
}