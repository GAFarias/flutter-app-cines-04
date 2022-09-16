import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/peliculas_model.dart';
import 'peli_card_cartelera_op1.dart';
import 'peli_card_hoy_op1.dart';

class ListaCarteleraOp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(kDefaultPaddin),
        color: kBackGroundColor,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 1.5,
            ),
            itemCount: listPelicula.length,
            itemBuilder: (context, index) =>
                PeliCardCarteleraOp1(pelicula: listPelicula[index])),
      ),
    );
  }
}
