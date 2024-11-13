import 'package:flutter/material.dart';
import 'package:t2_app/config/app_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: "Guardar perfiles",
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Controlador para capturar el texto
  final TextEditingController _textController = TextEditingController();

  // Variable para guardar el texto ingresado
  String savedText = '';

  @override
  void dispose() {
    _textController.dispose(); // Libera el controlador cuando ya no se usa
    super.dispose();
  }

  // Función que se llama al presionar el botón para guardar el texto
  void _saveText() {
    setState(() {
      savedText = _textController.text; // Guarda el texto del TextField
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guardar Texto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textController, // Asigna el controlador
              decoration: InputDecoration(labelText: 'Ingrese texto'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveText,
              child: Text('Guardar Texto'),
            ),
            SizedBox(height: 20),
            Text(
              'Texto guardado: $savedText',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
