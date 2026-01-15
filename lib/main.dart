import 'package:flutter/material.dart';
import 'style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Punto y Coma Hogar",
      home: Index(),
    );
  }
}

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {

  String imagenSeleccionada = "Samsung_S24.png";

  void cambiarImagen(String nuevaImagen) { 
    setState(() { 
      imagenSeleccionada = nuevaImagen; 
    }
  );
  }

  void mostrar(){
    setState(() {
      print("Presionado...");
    });
  }

  void mostrarAlerta(BuildContext context, String titulo) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("$titulo"),
        content: Text("Aquí info sobre $titulo."),
        actions: [
          TextButton(
            child: Text("Cerrar"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Estilo.fondo,
      appBar: AppBar(
        backgroundColor: Estilo.primario,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back), color: Estilo.superficie,),
        title: Text("Celulares", style: TextStyle(color: Estilo.superficie),),
        actionsPadding: EdgeInsets.only(right: 5),
        actions: [
          IconButton(onPressed: () => mostrarAlerta(context, "Carrito"), icon: Icon(Icons.shopping_cart), color: Estilo.superficie,),
          IconButton(onPressed: () => mostrarAlerta(context, "Tarjeta"), icon: Icon(Icons.credit_card), color: Estilo.superficie,)
        ],
      ),
      body: Center(child:
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => cambiarImagen("Huawei_80.png"),
                      child:  Estilo.Rectangulo(100,120, "Huawei_80.png"),
                    )
                  ]
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => cambiarImagen("IPhone_17.png"),
                      child:  Estilo.Rectangulo(100,120, "IPhone_17.png"),
                    )
                  ]
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => cambiarImagen("Samsung_S24.png"),
                      child: Estilo.Rectangulo(100,120,"Samsung_S24.png"),
                    )
                  ]
                ),                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Estilo.Rectangulo(300,300, imagenSeleccionada),
              ],),
          ],
        ),
      ),
    );
  }
}