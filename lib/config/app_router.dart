import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2_app/domain/entities/Perfil.dart';
import 'package:t2_app/presentation/screens/crearPerfil/Crearperfil.dart';
import 'package:t2_app/presentation/screens/homeView/homeview.dart';
import 'package:t2_app/presentation/screens/verPerfil/verPerfil.dart';

final appRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: "/crearPerfil",
      builder: (context, state) => CrearPerfil(),
    ),
    GoRoute(
      path: "/verPerfil",
      builder: (context, state) {
        // `state.extra` contenga una instancia de `PerfilUsuario`
        final perfilUsuario = state.extra as PerfilUsuario?;
        return VerPerfil(perfilUsuario: perfilUsuario!); 
      },
    ),
  ],
);
