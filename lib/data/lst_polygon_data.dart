import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';



final List<LatLng> pointsExternalPolygon = [
  // primeiro ponto da lista representa, esquina da pres. faria com xv de novembro, pontos seguintes
  // estão na sequencia horaria,
  LatLng(-25.42952150, -49.26769000),
  LatLng(-25.42949951, -49.26769986),
  LatLng(-25.42950141, -49.26770472),
  LatLng(-25.42947593, -49.26771699),
  LatLng(-25.42947960, -49.26772737),
  LatLng(-25.42934317, -49.26778943),
  LatLng(-25.42933905, -49.26777809),
  LatLng(-25.42903154, -49.26792655),
  LatLng(-25.42903589, -49.26793505),
  LatLng(-25.42888847, -49.26800842),
  LatLng(-25.42888304, -49.26799674),
  LatLng(-25.42883350,
      -49.26802124), //esquina esquina pres. faria com alfredo bufren
  LatLng(-25.42879328, -49.26791909),
  LatLng(-25.42880016, -49.26791543),
  LatLng(-25.42872074, -49.26769747),//ponto inicial biblioteca
  LatLng(-25.42870684, -49.26770498),
  LatLng(-25.42867116,
      -49.26760787), //esquina alfredo bufren com praca santos andrade
  LatLng(-25.42872399, -49.26758204),
  LatLng(-25.42871858, -49.26756821),
  LatLng(-25.42886299, -49.26749736),
  LatLng(-25.42886709, -49.26750949),
  LatLng(-25.42889250, -49.26749779),
  LatLng(-25.42890034, -49.26751973),
  LatLng(-25.42895996, -49.26749036),
  LatLng(-25.42895070, -49.26746465),
  LatLng(-25.42909557, -49.26739476),
  LatLng(-25.42910542, -49.26742175),
  LatLng(-25.42916131, -49.26739608),
  LatLng(-25.42915189, -49.26737156),
  LatLng(-25.42917702, -49.26736091),
  LatLng(-25.42917371, -49.26735325),
  LatLng(-25.42930610, -49.26729425),
  LatLng(-25.42931032, -49.26730510),
  LatLng(-25.42935827,
      -49.26728318), //esquina praca santos andrade, xv de novembro e comeco joao negrao
  LatLng(-25.42939136, -49.26736712),
  LatLng(-25.42938586, -49.26737010),
  LatLng(-25.42947287, -49.26759067),
  LatLng(-25.42947997, -49.26758701),
];


Polygon externalPolygon = Polygon(
  borderStrokeWidth: 6,
  //holePointsList: [
  //  [LatLng(-25.42901660, -49.26743412), LatLng(-25.42903196, -49.26742703)]
  //],
  borderColor: Colors.black87,
  //isFilled: true,
  points: pointsExternalPolygon,
  color: Colors.grey,
);


