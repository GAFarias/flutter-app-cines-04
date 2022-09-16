// To parse this JSON data, do
//
//     final funcionesDetalle = funcionesDetalleFromMap(jsonString);

import 'dart:convert';

class FuncionesDetalle {
  FuncionesDetalle({
    required this.id,
    required this.dref,
    required this.idFuncion,
    required this.codigoFuncionDetalle,
    required this.detalle,
    required this.codigoTipo,
    required this.precio,
    required this.nroEntrada,
    required this.proximaPosicion,
    required this.idCine,
  });

  int id;
  String dref;
  int idFuncion;
  int codigoFuncionDetalle;
  String detalle;
  int codigoTipo;
  double precio;
  String nroEntrada;
  int proximaPosicion;
  int idCine;

  factory FuncionesDetalle.fromJson(String str) =>
      FuncionesDetalle.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FuncionesDetalle.fromMap(Map<String, dynamic> json) =>
      FuncionesDetalle(
        id: json["id"],
        dref: json["dref"],
        idFuncion: json["idFuncion"],
        codigoFuncionDetalle: json["codigoFuncionDetalle"],
        detalle: json["detalle"],
        codigoTipo: json["codigoTipo"],
        precio: json["precio"],
        nroEntrada: json["nroEntrada"],
        proximaPosicion: json["proximaPosicion"],
        idCine: json["idCine"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "dref": dref,
        "idFuncion": idFuncion,
        "codigoFuncionDetalle": codigoFuncionDetalle,
        "detalle": detalle,
        "codigoTipo": codigoTipo,
        "precio": precio,
        "nroEntrada": nroEntrada,
        "proximaPosicion": proximaPosicion,
        "idCine": idCine,
      };
}
