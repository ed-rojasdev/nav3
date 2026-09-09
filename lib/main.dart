import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PantallaPerfl());
  }
}

class PantallaPerfl extends StatefulWidget {
  const PantallaPerfl({super.key});

  @override
  State<PantallaPerfl> createState() => _PantallaPerflState();
}

class _PantallaPerflState extends State<PantallaPerfl> {
  String estado = 'ninguno';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PERFIL')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'COLOR ELEGIDO: $estado',
              style: TextStyle(
                fontSize: 18,
                color: Colors.teal,
                fontWeight: FontWeight(400),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                String res = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaColor()),
                );
                setState(() {
                  estado = res;
                });
              },
              child: Text('seleccionar color'.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}

class PantallaColor extends StatelessWidget {
  const PantallaColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('color'.toUpperCase())),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'rojo');
              },
              child: Text('rojo'.toUpperCase()),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, ' azul');
              },
              child: Text('Azul'.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}
