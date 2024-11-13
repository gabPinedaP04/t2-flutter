import 'package:flutter/material.dart';
import 'package:t2_app/presentation/screens/homeView/homeview.dart';
import 'package:t2_app/presentation/screens/crearPerfil/Crearperfil.dart';
import 'package:t2_app/presentation/screens/verPerfil/verPerfil.dart';
import 'package:t2_app/presentation/widgets/botomm_navbar.dart';
import 'package:t2_app/domain/entities/Perfil.dart';

class HomeScreen extends StatelessWidget {
  final int viewIndex;
  const HomeScreen({super.key, required this.viewIndex});

  @override
  Widget build(BuildContext context) {
    // Crear un perfil de ejemplo
    final PerfilUsuario perfilEjemplo = PerfilUsuario(nombre: "Juan Pérez", ocupacion: "nini", edad: 1231312);

    return Scaffold(
      body: IndexedStack(
        index: viewIndex,
        children: [
          const HomeView(),
          CrearPerfil(),
          VerPerfil(perfilUsuario: perfilEjemplo), 
        ],
      ),
    );
  }
}
