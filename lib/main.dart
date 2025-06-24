import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicación',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco para evitar negro
      appBar: AppBar(
        title: Text("MI APLICACIÓN"),
        backgroundColor: const Color.fromARGB(255, 206, 186, 240), // Puedes cambiar el color si deseas
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Sección superior con 3 columnas de colores
          Expanded(
            flex: 3,
            child: Row(
              children: [
                // Columna 1
                Expanded(
                  child: Container(
                    color: Colors.blue[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, size: 50, color: Colors.black),
                        SizedBox(height: 10),
                        Text(
                          "Columna 1",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Columna 2
                Expanded(
                  child: Container(
                    color: Colors.pink[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite, size: 50, color: Colors.black),
                        SizedBox(height: 10),
                        Text(
                          "Columna 2",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Columna 3
                Expanded(
                  child: Container(
                    color: Colors.yellow[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lightbulb, size: 50, color: Colors.black),
                        SizedBox(height: 10),
                        Text(
                          "Columna 3",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Fila inferior verde claro
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info, size: 30, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                    "Fila inferior",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}