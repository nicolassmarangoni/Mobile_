import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador App',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF6A24DB, // Cor base
          <int, Color>{
            50: Color(0xFFE0BFFF),  // Cor mais clara
            100: Color(0xFFB399E6),  // Cor intermediária
            200: Color(0xFF9966CC),
            300: Color(0xFF7F4DB3),
            400: Color(0xFF6633CC),
            500: Color(0xFF6A24DB),  // Cor base
            600: Color(0xFF5919B3),
            700: Color(0xFF480E99),
            800: Color(0xFF3F007F),
            900: Color(0xFF330066),
          },
        ),
      ),
      home: ContadorScreen(),
    );
  }
}

class ContadorScreen extends StatefulWidget {
  @override
  _ContadorScreenState createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contagem:',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$_contador',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _decrementar,
                  child: Text('-'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _incrementar,
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
