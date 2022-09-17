import 'package:flutter/material.dart';
import 'package:gafcines_app_04/screens/detalle_screen_2.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../../constants.dart';
import '../../models/peliculas_model.dart';
import 'peli_card_hoy_op1.dart';

class ListaProximamenteOp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titles = List<String>.generate(
        listPelicula.length, (index) => listPelicula[index].nombre);

    final images = List<Widget>.generate(
      listPelicula.length,
      (index) => Container(
        child: FadeInImage(
          image: NetworkImage(listPelicula[index].urlPoster),
          //image: AssetImage('assets/imgs/no-image.jpg'),
          placeholder: const AssetImage('assets/imgs/no-image.jpg'),
          fit: BoxFit.fill,
          //height: 200,
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: kBackGroundColor,
                child: VerticalCardPager(
                    titles: titles, // required
                    images: images, // required
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold), // optional
                    onPageChanged: (page) {
                      // optional
                    },
                    onSelectedItem: (index) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetalleScreen2(
                                  pelicula: listPelicula[index],
                                )),
                      );
                    },
                    initialPage: 0, // optional
                    align: ALIGN.CENTER // optional
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
