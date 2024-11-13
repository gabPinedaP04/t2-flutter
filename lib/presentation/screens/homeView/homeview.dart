import 'package:flutter/material.dart';
import 'package:t2_app/presentation/widgets/botomm_navbar.dart';

import 'package:go_router/go_router.dart';



class HomeView extends StatelessWidget {

  final viewIndex = 0;
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home "),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          if(viewIndex == 0){
            context.go("/crearPerfil");
          }
        }, child: const Text("Crear perfil")),
      ),
    );
  }
}