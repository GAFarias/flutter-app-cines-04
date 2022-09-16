import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/opcion1_screen.dart';
import 'screens/opcion2_screen.dart';
import 'screens/opcion3_screen.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,

      title: 'GAFCines',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'opcion1': (_) => Opcion1Screen(),
        'opcion2': (_) => Opcion2Screen(),
        'opcion3': (_) => Opcion3Screen(),
        'details': (_) => DetalleScreen(),
      },
      theme: ThemeData(
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: kBackGroundColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
