import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gafcines_app_04/constants.dart';

import '../models/peliculas_model.dart';

class DetalleScreen extends StatelessWidget {
  get kBackGroundColor => null;

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Peliculas;

    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: buildAppBar(context),
      body: Center(
        child: Text(arg.nombre),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Comprar entradas"),
          icon: const Icon(Icons.monetization_on),
          backgroundColor: kButton1),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackGroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
