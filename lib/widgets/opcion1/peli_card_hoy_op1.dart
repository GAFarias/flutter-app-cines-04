import 'package:flutter/material.dart';
import '../../models/peliculas_model.dart';
import '../../constants.dart';

class PeliCardHoyOp1 extends StatelessWidget {
  final Peliculas pelicula;

  const PeliCardHoyOp1({required this.pelicula});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'details',
          //arguments: {'idPeli': pelicula.id.toString()}),
          arguments: pelicula),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin / 2),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                  tag: "${pelicula.id}",
                  child: FadeInImage(
                    image: NetworkImage(pelicula.urlPoster),
                    //image: AssetImage('assets/imgs/no-image.jpg'),
                    placeholder: const AssetImage('assets/imgs/no-image.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              pelicula.nombre,
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "ATP - Accion - 120 min",
            style: TextStyle(color: kTextLightColor),
          )
        ],
      ),
    );
  }
}
