import 'package:flutter/material.dart';
import '../../models/peliculas_model.dart';
import '../../constants.dart';

class PeliCardCarteleraOp1 extends StatelessWidget {
  final Peliculas pelicula;

  const PeliCardCarteleraOp1({required this.pelicula});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'details',
          //arguments: {'idPeli': pelicula.id.toString()}),
          arguments: pelicula),
      child: Card(
        color: kBackGroundColor,
        elevation: 5.0,
        shadowColor: Colors.grey.withOpacity(0.2),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                    width: 120,
                    height: 150,
                    child: Hero(
                      tag: "${pelicula.id}",
                      child: FadeInImage(
                        image: NetworkImage(pelicula.urlPoster),
                        //image: AssetImage('assets/imgs/no-image.jpg'),
                        placeholder:
                            const AssetImage('assets/imgs/no-image.jpg'),
                        fit: BoxFit.fitHeight,
                        //height: 200,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 150,
                        child: Text(
                          pelicula.nombre,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 20,
                              color: kTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          pelicula.descripcion,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style:
                              TextStyle(fontSize: 12, color: kTextLightColor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: kBackGroundColor,
                child: ChipsDatosPeli(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChipsDatosPeli extends StatelessWidget {
  const ChipsDatosPeli({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Chip(
          avatar: CircleAvatar(
            child: Icon(Icons.more_time_sharp),
            foregroundColor: kButton1,
            backgroundColor: kButton2,
          ),
          label: Text("97m"),
          labelStyle: TextStyle(color: kTextColor),
          backgroundColor: kButton2,
          elevation: 20,
          shadowColor: kBackGroundColor,
        ),
        SizedBox(
          width: 10,
        ),
        const Chip(
          avatar: CircleAvatar(
            child: Icon(Icons.person),
            foregroundColor: kButton1,
            backgroundColor: kButton2,
          ),
          label: Text("ATP"),
          labelStyle: TextStyle(color: kTextColor),
          backgroundColor: kButton2,
          elevation: 20,
          shadowColor: kBackGroundColor,
        ),
        SizedBox(
          width: 10,
        ),
        const Chip(
          avatar: CircleAvatar(
            child: Icon(Icons.calendar_month),
            foregroundColor: kButton1,
            backgroundColor: kButton2,
          ),
          label: Text("2022"),
          labelStyle: TextStyle(color: kTextColor),
          backgroundColor: kButton2,
          elevation: 20,
          shadowColor: kBackGroundColor,
        ),
      ],
    );
  }
}
