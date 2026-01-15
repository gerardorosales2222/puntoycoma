import 'package:flutter/material.dart';

//ctrl+J para mostrar panel de la Terminal y Outputs

class Estilo{

  static const Color primario = Color(0xFF8319A7);

  // Color de realce (Cyan vibrante para contrastar con el púrpura)
  static const Color acento = Color(0xFF00E5FF);
  
  // Colores de soporte
  static const Color fondo = Color(0xFFF5F5F7);
  static const Color superficie = Color(0xFFFFFFFF);
  
  // Colores de texto
  static const Color textoPrincipal = Color(0xFF1D1D1F);
  static const Color textoSecundario = Color(0xFF757575);

  // Ejemplo de uso en un gradiente para banners
  static const Gradient gradientePrimario = LinearGradient(
    colors: [primario, Color(0xFFA142CF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static Widget Rectangulo(double ancho, double alto, String nombreImagen){
    return Container(
      width: ancho,
      height: alto,
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0, 
        vertical: 8.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
        // Concatenamos la ruta de tu carpeta con el nombre que recibimos
        image: AssetImage('assets/img/${nombreImagen}'),
        fit: BoxFit.contain,
      ),
      ),
    );
  }

}