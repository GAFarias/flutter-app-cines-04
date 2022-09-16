// To parse this JSON data, do
//
//     final funciones = funcionesFromMap(jsonString);

import 'dart:convert';

class Funciones {
  Funciones({
    required this.id,
    required this.fref,
    required this.codigoFuncion,
    required this.idPelicula,
    required this.idCine,
    required this.fechaHora,
    required this.fechaHoraFicticia,
    required this.lenguaje,
    required this.formato,
    required this.sala,
    required this.vender,
    required this.mostrar,
    required this.maxVentas,
    required this.estadoventa,
    required this.pelicula,
  });

  int id;
  String fref;
  int codigoFuncion;
  int idPelicula;
  int idCine;
  DateTime fechaHora;
  DateTime fechaHoraFicticia;
  String lenguaje;
  String formato;
  String sala;
  bool vender;
  bool mostrar;
  int maxVentas;
  dynamic estadoventa;
  dynamic pelicula;

  factory Funciones.fromJson(String str) => Funciones.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Funciones.fromMap(Map<String, dynamic> json) => Funciones(
        id: json["id"],
        fref: json["fref"],
        codigoFuncion: json["codigoFuncion"],
        idPelicula: json["idPelicula"],
        idCine: json["idCine"],
        fechaHora: DateTime.parse(json["fechaHora"]),
        fechaHoraFicticia: DateTime.parse(json["fechaHoraFicticia"]),
        lenguaje: json["lenguaje"],
        formato: json["formato"],
        sala: json["sala"],
        vender: json["vender"],
        mostrar: json["mostrar"],
        maxVentas: json["maxVentas"],
        estadoventa: json["estadoventa"],
        pelicula: json["pelicula"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "fref": fref,
        "codigoFuncion": codigoFuncion,
        "idPelicula": idPelicula,
        "idCine": idCine,
        "fechaHora": fechaHora.toIso8601String(),
        "fechaHoraFicticia": fechaHoraFicticia.toIso8601String(),
        "lenguaje": lenguaje,
        "formato": formato,
        "sala": sala,
        "vender": vender,
        "mostrar": mostrar,
        "maxVentas": maxVentas,
        "estadoventa": estadoventa,
        "pelicula": pelicula,
      };
}
