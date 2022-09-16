import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:wia/models/sector.dart';
import 'package:latlong2/latlong.dart';

final List<Sector> lstSector = [
  //'Selecione um destino:' : '',
  Sector(
      id: 0,
      name: "Selecione um destino",
      coordinate: ['00.00', '00.00'],
      polygon: Polygon(points: [LatLng(0, 0), LatLng(0, 0)]),
      info: "Selecione um destino"),
  Sector(
      id: 1,
      name: "Atendimento PROGRAD",
      coordinate: ['-25.4288948', '-49.2677837'],
      polygon: Polygon(points: [
        LatLng(-25.42889940, -49.26777964),
        LatLng(-25.42898223, -49.26774047),
        LatLng(-25.42900345, -49.26779540),
        LatLng(-25.42898675, -49.26780319),
        LatLng(-25.42899399, -49.26782344),
        LatLng(-25.42892675, -49.26785479),
      ], borderStrokeWidth: 5, borderColor: Colors.purple),
      info: "Atendimento ao público PROGRAD"),
  Sector(
      id: 2,
      name: "Biblioteca",
      coordinate: ['-25.42881006', '-49.26774100'],
      polygon: Polygon(points: [
        LatLng(-25.42875461,-49.26778727),
        LatLng(-25.42872167,-49.26769659),
        LatLng(-25.42870500,-49.26770327),
        LatLng(-25.42866996,-49.26760808),
        LatLng(-25.42872306,-49.26758057),
        LatLng(-25.42871912,-49.26756977),
        LatLng(-25.42886047,-49.26750056),
        LatLng(-25.42889169,-49.26749919),
        LatLng(-25.42889214,-49.26749898),
        LatLng(-25.42895430,-49.26766998),
        LatLng(-25.42882535,-49.26773395),
        LatLng(-25.42881175,-49.26774249),
        LatLng(-25.42881783,-49.26775669),
      ], borderStrokeWidth: 5, borderColor: Colors.blueGrey),
      info: "Biblioteca jurídica"),
  Sector(
      id: 3,
      name: "COPAP",
      coordinate: ['-25.42937111', '-49.26754533'],
      polygon: Polygon(points: [
        LatLng(-25.42939441,-49.26753453),
        LatLng(-25.42942750,-49.26761964),
        LatLng(-25.42935551,-49.26765376),
        LatLng(-25.42932025,-49.26756636),
      ], borderStrokeWidth: 5, borderColor: Colors.green),
      info: "Unidade de diplomas"),
  Sector(
      id: 4,
      name: "CIPEAD",
      coordinate: ['-25.42933392', '-49.26767055'],
      polygon: Polygon(points: [
        LatLng(-25.42930632,-49.26767670),
        LatLng(-25.42948136,-49.26759728),
        LatLng(-25.42951875,-49.26768807),
        LatLng(-25.42949688,-49.26769772),
        LatLng(-25.42950022,-49.26770606),
        LatLng(-25.42947365,-49.26771625),
        LatLng(-25.42947651,-49.26772590),
        LatLng(-25.42934882,-49.26778435),
      ], borderStrokeWidth: 5, borderColor: Colors.yellow),
      info: "EAD PROGRAD"),
  Sector(
      id: 5,
      name: "COAFE",
      coordinate: ['-25.42928025', '-49.26741163'],
      polygon: Polygon(points: [
        LatLng(-25.42928883,-49.26741180),
        LatLng(-25.42925191,-49.26731967),
        LatLng(-25.42930784,-49.26729469),
        LatLng(-25.42931223,-49.26730528),
        LatLng(-25.42935670,-49.26728400),
        LatLng(-25.42938992,-49.26736466),
        LatLng(-25.42938992,-49.26736466),
      ], borderStrokeWidth: 5, borderColor: Colors.orange),
      info: "Unidade de Estágio"),
  Sector(
      id: 6,
      name: "COSIS",
      coordinate: ['-25.42885259', '-49.26787655'],
      polygon: Polygon(points: [
        LatLng(-25.42880165,-49.26791642),
        LatLng(-25.42878077,-49.26785749),
        LatLng(-25.42884398,-49.26782691),
        LatLng(-25.42886715,-49.26788368),
      ], borderStrokeWidth: 5, borderColor: Colors.brown),
      info: "Unidade de Informática"),
  Sector(
      id: 7,
      name: "Entrada/Saida Principal",
      coordinate: ['-25.42900698', '-49.26745130'],
      polygon: Polygon(points: [
        LatLng(-25.42906312,-49.26741320),
        LatLng(-25.42908377,-49.26746456),
        LatLng(-25.42906341,-49.26747625),
        LatLng(-25.42908727,-49.26754040),
        LatLng(-25.42904539,-49.26755663),
        LatLng(-25.42902237,-49.26749429),
        LatLng(-25.42900441,-49.26749937),
        LatLng(-25.42898770,-49.26745057),
      ], borderStrokeWidth: 5, borderColor: Colors.cyan),
      info: "Entrada/Saida Principal pela Praça Santos Andrade"),
  Sector(
      id: 8,
      name: "Entrada/Saida Lateral",
      coordinate: ['-25.42877982', '-49.26779419'],
      polygon: Polygon(points: [
        LatLng(-25.42876456,-49.26781450),
        LatLng(-25.42875431,-49.26779016),
        LatLng(-25.42882923,-49.26775522),
        LatLng(-25.42883527,-49.26777878),
      ], borderStrokeWidth: 5, borderColor: Colors.amber),
      info: "Entrada/Saida Lateral pela rua Alfredo Bufren"),
];
