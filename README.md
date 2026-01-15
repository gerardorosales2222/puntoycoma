# GestureDetector Demo en Flutter

Este proyecto es un ejemplo **simple y limpio** para mostrar cómo utilizar el widget [`GestureDetector`](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) en Flutter, específicamente su variante **`onTap`**.

## 🎯 Objetivo
El propósito es que el código sea lo más claro posible, destacando únicamente lo esencial:  
- Cómo envolver un widget con `GestureDetector`.  
- Cómo capturar la interacción del usuario mediante el evento `onTap`.  
- Cómo responder a esa interacción de manera sencilla.

## 📂 Estructura del proyecto
El proyecto se concentra en un único archivo `main.dart` para mantener la claridad:

- `main.dart`: contiene la aplicación Flutter con un `GestureDetector` que detecta toques en pantalla y ejecuta una acción.

## 🛠️ Ejemplo de uso
Dentro de `main.dart` encontrarás un ejemplo como este:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              print("El widget fue tocado!");
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blue,
              child: const Text(
                "Tócame",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

## 🚀 Cómo ejecutar
1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/gesture_detector_demo.git
   ```
2. Entra en la carpeta del proyecto:
   ```bash
   cd gesture_detector_demo
   ```
3. Ejecuta la aplicación:
   ```bash
   flutter run
   ```

## 📖 Qué aprenderás
- La importancia de `GestureDetector` para manejar gestos en Flutter.  
- Cómo simplificar un proyecto para enfocarse en un concepto clave.  
- Cómo extender este ejemplo para otros gestos (`onDoubleTap`, `onLongPress`, etc.).

---

✨ Este repositorio está pensado como un recurso introductorio: directo, claro y fácil de ampliar para quienes quieran explorar más gestos en Flutter.
```

---

¿Quieres que además te prepare una **sección de ejercicios sugeridos** en el README (por ejemplo: cambiar el color al tocar, mostrar un `SnackBar`, etc.) para que tus estudiantes puedan experimentar más allá del ejemplo inicial?
