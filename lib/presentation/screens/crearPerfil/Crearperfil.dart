import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2_app/domain/entities/Perfil.dart';

class CrearPerfil extends StatelessWidget {
  final TextEditingController controladorNombre = TextEditingController();
  final TextEditingController controladorTrabajo = TextEditingController();
  final TextEditingController controladorEdad = TextEditingController();

  CrearPerfil({super.key});

  void GuardarDatos(BuildContext context) {
    String nombre = controladorNombre.text;
    String trabajo = controladorTrabajo.text;
    int edad;

    try {
      edad = int.parse(controladorEdad.text);
    } catch (e) {
      print("Error: La edad debe ser un número");
      return;
    }

    final perfilUsuario = PerfilUsuario(nombre: nombre, ocupacion: trabajo, edad: edad);

    context.go("/verPerfil", extra: perfilUsuario);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crear perfil"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () => context.go('/home'),
            child: const Text("Regresar"),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 500,
            child: TextField(
              controller: controladorNombre,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa tu nombre',
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 500,
            child: TextField(
              controller: controladorTrabajo,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa tu ocupación',
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 500,
            child: TextField(
              controller: controladorEdad,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa tu edad',
              ),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              print("Guardando ...");
              GuardarDatos(context);
            },
            child: const Text("Guardar y ver perfil"),
          ),
        ],
      ),
    );
  }
}
