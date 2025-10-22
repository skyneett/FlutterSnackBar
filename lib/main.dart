import 'package:flutter/material.dart';

// Función principal que inicia la aplicación
void main() => runApp(const HaloApp());

// Widget principal de la aplicación
class HaloApp extends StatelessWidget {
  const HaloApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp: configura el tema y la pantalla inicial
    return const MaterialApp(
      home: HaloCard(), // Pantalla principal
    );
  }
}

// Widget que muestra la Card de Halo con botón
class HaloCard extends StatelessWidget {
  const HaloCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior de la app
      appBar: AppBar(
        title: const Text('Halo - UNSC'),
        backgroundColor: Colors.black,
      ),
      // Cuerpo de la pantalla: centrado
      body: Center(
        child: Card(
          elevation: 8, // Sombra de la card
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            width: 320,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Imagen de Halo (redondeada en la parte superior)
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.network(
                    'https://media.gq.com.mx/photos/61f99491247e703ee62fca75/1:1/w_1690,h_1690,c_limit/halo.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // Espaciado y botón
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Text(
                        'HALO',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Botón que muestra el SnackBar
                      ElevatedButton(
                        onPressed: () {
                          // Muestra el SnackBar con el mensaje
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text('La UNSC TE NECESITA'),
                              action: SnackBarAction(
                                label: 'OK',
                                onPressed: () {
                                  // Acción al presionar "OK"
                                },
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                        ),
                        child: const Text('Unirse a la UNSC'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
