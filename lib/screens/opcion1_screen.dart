import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gafcines_app_04/constants.dart';
import 'package:gafcines_app_04/widgets/opcion1/lista_hoy_op1.dart';

import '../widgets/opcion1/lista_cartelera_op1.dart';
import '../widgets/opcion1/lista_proximamente_op1.dart';

class Opcion1Screen extends StatefulWidget {
  @override
  State<Opcion1Screen> createState() => _Opcion1ScreenState();
}

class _Opcion1ScreenState extends State<Opcion1Screen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List<String>? categorias;
  int? indiceActual;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    categorias = ["En Cartelera", "Proximamente", "Complejos"];
    indiceActual = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: kBackGroundColor,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPaddin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nombre Cine",
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                        backgroundColor: kButton1,
                        radius: 17,
                        child: ClipOval(
                          child: SvgPicture.asset(
                            'assets/icons/cart.svg',
                            height: 30,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              child: TabBar(
                  controller: _tabController,
                  indicatorWeight: 3,
                  indicatorColor: kButton1,
                  isScrollable: true,
                  labelColor: kTextLightColor,
                  tabs: [
                    Text("para Hoy"),
                    Text("En cartelera"),
                    Text("Proximamente"),
                    Text("Otra opcion"),
                  ]),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Container(color: Colors.green, child: ListaHoyOp1()),
                Container(color: Colors.green, child: ListaCarteleraOp1()),
                Container(color: Colors.green, child: ListaProximamenteOp1()),
                Center(
                  child: Text('OPCION 4',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

// Widget buildCategoria(int index) {
//     return GestureDetector(
//         onTap: () {
//           setState(() {
//             indiceActual = index;
//           });
//         },
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//           child: Column(
//             children: <Widget>[
//               Text(
//                 categorias[index],
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color:
//                         indiceActual == index ? kTextColor : kTextLightColor),
//               ),
//               Container(
//                 margin:
//                     EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
//                 height: 2,
//                 width: 30,
//                 color: indiceActual == index ? kButton1 : Colors.transparent,
//               )
//             ],
//           ),
//         ));
//   }
// }