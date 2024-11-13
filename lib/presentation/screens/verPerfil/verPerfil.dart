import 'package:flutter/material.dart';
import 'package:t2_app/domain/entities/Perfil.dart';
import 'package:t2_app/presentation/widgets/botomm_navbar.dart';

import 'package:go_router/go_router.dart';


class VerPerfil extends StatelessWidget {
  final PerfilUsuario perfilUsuario;

  const VerPerfil({super.key, required this.perfilUsuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi perfil'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Nombre: ${perfilUsuario.nombre}'),
          Text('Ocupación: ${perfilUsuario.ocupacion}'),
          Text('Edad: ${perfilUsuario.edad}'),

          ElevatedButton(onPressed: (){
            context.go("/home");
          }, child: Text("Regresar a inicio"))
        ],
      ),
    );
  }
}
