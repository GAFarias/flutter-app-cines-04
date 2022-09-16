import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'opcion1');
              },
              child: const Text('Opcion 1'),
              style: EstiloBoton(),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'opcion2');
              },
              child: const Text('Opcion 2'),
              style: EstiloBoton(),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'opcion3');
              },
              child: const Text('Opcion 3'),
              style: EstiloBoton(),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle EstiloBoton() {
    return TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.blueAccent,
        textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
  }
}
