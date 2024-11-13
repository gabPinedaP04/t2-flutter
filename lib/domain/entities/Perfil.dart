class PerfilUsuario{
  String nombre;
  String ocupacion;
  int edad;  // Aquí hay un error de tipo. Debe ser `int` en lugar de `Int`.
  
  PerfilUsuario({required this.nombre, required this.ocupacion, required this.edad});
  
}
