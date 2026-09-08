import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PantallaPerfil());
  }
}

class PantallaPerfil extends StatefulWidget {
  const PantallaPerfil({super.key});

  @override
  State<PantallaPerfil> createState() => _PantallaPerfilState();
}

class _PantallaPerfilState extends State<PantallaPerfil> {
  String colorElegido = 'ninguno';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PERFIL')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Color elegido: $colorElegido',
              style: TextStyle(fontSize: 17, color: Colors.teal),
            ),
            ElevatedButton(
              onPressed: () async {
                String res = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaSeleccion()),
                );
                setState(() {
                  colorElegido = res;
                });
              },
              child: Text('Seleccionar color'),
            ),
          ],
        ),
      ),
    );
  }
}

class PantallaSeleccion extends StatelessWidget {
  const PantallaSeleccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SELECCION')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'azul');
              },
              child: Text('AZUL'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'rojo');
              },
              child: Text('ROJO'),
            ),
          ],
        ),
      ),
    );
  }
}
