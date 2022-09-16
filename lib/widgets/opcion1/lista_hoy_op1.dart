import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/peliculas_model.dart';
import 'peli_card_hoy_op1.dart';

class ListaHoyOp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(kDefaultPaddin),
        color: kBackGroundColor,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.6,
            ),
            itemCount: listPelicula.length,
            itemBuilder: (context, index) =>
                PeliCardHoyOp1(pelicula: listPelicula[index])),
      ),
    );
  }
}
