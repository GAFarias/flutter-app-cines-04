// To parse this JSON data, do
//
//     final peliculas = peliculasFromMap(jsonString);

import 'package:flutter/material.dart';

class Peliculas {
  final int id, codigoPelicula, idCine;
  final String pref,
      nombre,
      abreviatura,
      descripcion,
      datosTecnicos,
      urlTrailer,
      idYoutube,
      urlPoster;
  final bool vender, mostrar;

  Peliculas({
    required this.id,
    required this.codigoPelicula,
    required this.pref,
    required this.nombre,
    required this.abreviatura,
    required this.descripcion,
    required this.datosTecnicos,
    required this.urlTrailer,
    required this.idYoutube,
    required this.vender,
    required this.mostrar,
    required this.idCine,
    required this.urlPoster,
  });
}

List<Peliculas> listPelicula = [
  Peliculas(
      id: 1,
      codigoPelicula: 1,
      pref: '1234567',
      nombre: '30 noches con mi ex',
      abreviatura: '30 noches con mi ex',
      descripcion:
          'Luego de estar años separado de su esposa, "El Turbo" (interpretado por Adrián Suar) acepta el pedido de su hija en que convivan nuevamente por 30 días con su ex esposa que se está recuperando de una larga internación.'
          'La nueva vida en familia podría reavivar los sentimientos de amor y la ilusión de estar juntos.',
      datosTecnicos: 'TITULO: 30 noches con mi ex'
          'DIRECCIÓN: Adrián Suar.'
          'ACTORES: Adrián Suar, Pilar Gamboa.'
          'GENERO: Comedia'
          'ORIGEN: Argentina.'
          'DURACION: 95 Minutos'
          'CALIFICACION: Apta mayores de 13 años',
      urlTrailer: 'https://www.youtube.com/watch?v=IKRwXsCUjfI&t=2s',
      idYoutube: 'IKRwXsCUjfI&t',
      vender: true,
      mostrar: true,
      idCine: 1,
      urlPoster:
          'https://www.cinesargentinos.com.ar/poster/8964-30-noches-con-mi-ex_168.jpg'),
  Peliculas(
      id: 2,
      codigoPelicula: 3,
      pref: '1234568',
      nombre: 'Nope',
      abreviatura: 'Nope',
      descripcion:
          'Del director de Huye. Sigue a los trabajadores del rancho de Hayward, un lugar donde preparan caballos para filmaciones de Hollywood. Ubicados en medio de un árido paisaje, viven una tranquila rutina. Hasta que un día espeluznantes sucesos comienzan a ocurrir, que transformarán la vida de los protagonistas en una escalofriante pesadilla.',
      datosTecnicos: 'TITULO ORIGINAL: Nope'
          'DIRECCIÓN: Jordan Peele.'
          'ACTORES: Daniel Kaluuya, Steven Yeun, Keke Palmer.'
          'GUION: Jordan Peele.'
          'FOTOGRAFIA: Hoyte Van Hoytema.'
          'MÚSICA: Michael Abels.'
          'GENERO: Terror .'
          'ORIGEN: Estados Unidos.'
          'DURACION: 130 Minutos'
          'CALIFICACION: Apta mayores de 13 años',
      urlTrailer: 'https://www.youtube.com/watch?v=g27xxJqSJHU&t=6s',
      idYoutube: 'g27xxJqSJHU&t',
      vender: true,
      mostrar: true,
      idCine: 1,
      urlPoster: 'https://www.cinesargentinos.com.ar/poster/8770-nop_168.jpg'),
  Peliculas(
      id: 3,
      codigoPelicula: 4,
      pref: '1234569',
      nombre: 'Un crimen argentino',
      abreviatura: 'Un crimen argentino',
      descripcion:
          'Thriller de investigación criminal y político, basado en un hecho real ocurrido en los años 80: la intrigante desaparición de un hombre de negocios en la ciudad de Rosario, en el marco de la dictadura militar argentina. El caso es asignado a dos secretarios de un juzgado de instrucción pocas semanas antes de que uno de ellos emigre a España. En una carrera contra el tiempo ambos juristas intentarán resolver el caso enfrentando las interferencias de una policía subordinada al poder represor.',
      datosTecnicos: 'TITULO ORIGINAL: Un crimen argentino'
          'DIRECCIÓN: Jordan Peele.'
          'ACTORES: Daniel Kaluuya, Steven Yeun, Keke Palmer.'
          'GUION: Jordan Peele.'
          'FOTOGRAFIA: Hoyte Van Hoytema.'
          'MÚSICA: Michael Abels.'
          'GENERO: Terror .'
          'ORIGEN: Estados Unidos.'
          'DURACION: 130 Minutos'
          'CALIFICACION: Apta mayores de 13 años',
      urlTrailer: 'https://www.youtube.com/watch?v=g27xxJqSJHU&t=6s',
      idYoutube: 'g27xxJqSJHU&t',
      vender: true,
      mostrar: true,
      idCine: 1,
      urlPoster:
          'https://www.cinesargentinos.com.ar/poster/9001-un-crimen-argentino_168.jpg'),
  Peliculas(
      id: 4,
      codigoPelicula: 5,
      pref: '1234570',
      nombre: 'Fall',
      abreviatura: 'Fall',
      descripcion:
          'Después de que Dan muriera escalando en las Montañas Rocosas, su novia Becky y su amiga Hunter deciden ascender una enorme y deteriorada torre de comunicaciones de más de 600 metros de altura y arrojar las cenizas de Dan. A una distancia considerable del suelo y sin cobertura, su ascenso se complica al caerse una parte de la estructura de la torre. No pueden bajar ni pedir ayuda porque están totalmente alejadas de la civilización. No les quedará más remedio que luchar por sobrevivir aunque lo tengan todo en contra.',
      datosTecnicos: 'TITULO: Vertigo'
          'TITULO ORIGINAL: Fall'
          'DIRECCIÓN: Scott Mann.'
          'ACTORES: Jeffrey Dean Morgan, Virginia Gardner, Grace Caroline Currey.'
          'GUION: Scott Mann.'
          'FOTOGRAFIA: . MacGregor.'
          'MÚSICA: Tim Despic.'
          'GENERO: Suspenso .'
          'ORIGEN: Estados Unidos.'
          'DURACION: 107 Minutos'
          'CALIFICACION: Apta mayores de 13 años',
      urlTrailer: 'https://www.youtube.com/watch?v=KzsStpXE-xw',
      idYoutube: 'KzsStpXE-xw',
      vender: true,
      mostrar: true,
      idCine: 1,
      urlPoster:
          'https://www.cinesargentinos.com.ar/poster/9158-vertigo_168.jpg'),
  Peliculas(
      id: 5,
      codigoPelicula: 6,
      pref: '1234571',
      nombre: 'La chica salvaje',
      abreviatura: 'La chica salvaje',
      descripcion:
          'Una mujer que se crió a si misma en el Sur profundo se convierte en sospechosa del asesinato de un hombre con el cual alguna vez tuvo una relación.',
      datosTecnicos: 'TITULO ORIGINAL: Where the Crawdads Sing'
          'ACTORES: Daisy Edgar-Jones, Harris Dickinson, David Strathairn.'
          'GENERO: Policial , Drama .'
          'DIRECCION: Olivia Newman.'
          'ORIGEN: Estados Unidos.'
          'DURACION: 125 Minutos'
          'CALIFICACION: Apta mayores de 13 años con reservas',
      urlTrailer: 'https://www.youtube.com/watch?v=Qpo6Av9sdqM&t=3s',
      idYoutube: 'Qpo6Av9sdqM&t',
      vender: true,
      mostrar: true,
      idCine: 1,
      urlPoster:
          'https://www.cinesargentinos.com.ar/poster/9019-la-chica-salvaje_168.jpg'),
];
