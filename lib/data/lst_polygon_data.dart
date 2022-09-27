import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

final List<LatLng> pointsDegreeStairs = [
  LatLng(-25.42936799, -49.26752942),
  LatLng(-25.42933114, -49.26754635),
  LatLng(-25.42931396, -49.26750352),
  LatLng(-25.42935169, -49.26748647),
];

final List<LatLng> pointsElevatorEntrance = [
  LatLng(-25.42909702, -49.26757035),
  LatLng(-25.42910574, -49.26759318),
  LatLng(-25.42907163, -49.26760892),
  LatLng(-25.42906332, -49.26758649),
];

final List<LatLng> pointsElevatorEntrance1 = [
  LatLng(-25.42933380,-49.26748164),
  LatLng(-25.42931445,-49.26743418),
  LatLng(-25.42929554,-49.26744189),
  LatLng(-25.42931500,-49.26749042),
];

final List<LatLng> pointsElevatorSideEntrance = [
  LatLng(-25.42889189, -49.26776163),
  LatLng(-25.42887816, -49.26772692),
  LatLng(-25.42886061, -49.26773497),
  LatLng(-25.42887405, -49.26777075),
];

final List<LatLng> pointsUnknownSector1 = [
  LatLng(-25.42910574, -49.26759318),
  LatLng(-25.42907163, -49.26760892),
  LatLng(-25.42906581, -49.26759333),
  LatLng(-25.42904105, -49.26760511),
  LatLng(-25.42908433, -49.26771718),
  LatLng(-25.42914330, -49.26768991),
];

final List<LatLng> pointsUnknownSector2 = [
  LatLng(-25.42915542, -49.26771676),
  LatLng(-25.42916684, -49.26774470),
  LatLng(-25.42930574, -49.26767782),
  LatLng(-25.42934877, -49.26778542),
  pointsExternalPolygon[5],
  pointsExternalPolygon[6],
  LatLng(-25.42908550, -49.26789826),
  LatLng(-25.42904752, -49.26780113),
  LatLng(-25.42910589, -49.26777338),
  LatLng(-25.42909535, -49.26774554),
];

final List<LatLng> pointsUnknownSector3 = [
  LatLng(-25.42889723, -49.26777781),
  LatLng(-25.42885290, -49.26779892),
  LatLng(-25.42888249, -49.26787641),
  LatLng(-25.42892648, -49.26785514),
];

final List<LatLng> pointsUnknownSector4 = [
  pointsExternalPolygon[22],
  pointsExternalPolygon[23],
  pointsExternalPolygon[24],
  LatLng(-25.42898366, -49.26745027),
  LatLng(-25.42903710, -49.26759102),
  LatLng(-25.42894104, -49.26763649),
];

final List<LatLng> pointsUnknownSector5 = [
  LatLng(-25.429062690, -49.267412375),
  pointsExternalPolygon[25],
  pointsExternalPolygon[26],
  pointsExternalPolygon[27],
  pointsExternalPolygon[28],
  pointsExternalPolygon[29],
  pointsExternalPolygon[30],
  LatLng(-25.42925085, -49.26731968),
  LatLng(-25.42928757, -49.26741145),
  LatLng(-25.42926407, -49.26742195),
  LatLng(-25.42927946, -49.26746213),
  LatLng(-25.42927546, -49.26746331),
  LatLng(-25.42929080, -49.26750089),
  LatLng(-25.42921737, -49.26753481),
  LatLng(-25.42920548, -49.26750594),
  LatLng(-25.42911526, -49.26754846),
];

final List<LatLng> pointsUnknownSector6 = [
  pointsExternalPolygon[36],
  pointsExternalPolygon[37],
  LatLng(-25.42948185,-49.26759612),
  LatLng(-25.42942732,-49.26762039),
  LatLng(-25.42939239,-49.26753591),
  LatLng(-25.42944201,-49.26751271),
];

final List<LatLng> pointsUnknownSector7 = [
  LatLng(-25.42933383,-49.26748135),
  LatLng(-25.42930285,-49.26740382),
  LatLng(-25.42938217,-49.26736748),
  LatLng(-25.42941338,-49.26744562),
];

final List<LatLng> pointsStair3 = [
  LatLng(-25.42908472, -49.26746664),
  LatLng(-25.42911538, -49.26754707),
  LatLng(-25.42909370, -49.26755745),
  LatLng(-25.42908686, -49.26754168),
  LatLng(-25.42909279, -49.26753896),
  LatLng(-25.42906711, -49.26747527),
];

final List<LatLng> pointsStair4 = [
  LatLng(-25.42901936, -49.26749763),
  LatLng(-25.42904424, -49.26756217),
  LatLng(-25.42905114, -49.26755910),
  LatLng(-25.42905732, -49.26757456),
  LatLng(-25.42903498, -49.26758463),
  LatLng(-25.42900333, -49.26750374),
];

final List<LatLng> pointsStair2 = [
  //LatLng(-25.42890106, -49.26772675),
  LatLng(-25.42889587, -49.26771439),
  LatLng(-25.42893931, -49.26769388),
  LatLng(-25.42895931, -49.26768383),
  LatLng(-25.42897571, -49.26772738),
  LatLng(-25.42891242, -49.26775872),
  //LatLng(-25.42890812, -49.26774424),
  //LatLng(-25.42893710, -49.26773037),
  //LatLng(-25.42893021, -49.26771296),
];

final List<LatLng> pointsStair1 = [
  LatLng(-25.42914345, -49.26768957),
  LatLng(-25.42908442, -49.26771742),
  LatLng(-25.42909556, -49.26774574),
  LatLng(-25.42915532, -49.26771762),
];

final List<LatLng> pointsStair5 = [
  LatLng(-25.42930385,-49.26743776),
  LatLng(-25.42929672,-49.26742044),
  LatLng(-25.42930798,-49.26741565),
  LatLng(-25.42931496,-49.26743330),
];

final List<LatLng> pointsInternalRightSpan = [
  LatLng(-25.42896155, -49.26764407),
  LatLng(-25.42903922, -49.26760672),
  LatLng(-25.42910396, -49.26777453),
  LatLng(-25.42902578, -49.26781038),
];

final List<LatLng> pointsInternalLeftSpan = [
  LatLng(-25.42912238, -49.26756888),
  LatLng(-25.42920006, -49.26753253),
  LatLng(-25.42920753, -49.26755294),
  LatLng(-25.42928421, -49.26751759),
  LatLng(-25.42933550, -49.26764656),
  LatLng(-25.42929815, -49.26766398),
  LatLng(-25.42930363, -49.26767892),
  LatLng(-25.42924189, -49.26770780),
  LatLng(-25.42923492, -49.26769287),
  LatLng(-25.42918164, -49.26771826),
  LatLng(-25.42912238, -49.26756838),
];

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
  LatLng(-25.42872074, -49.26769747), //ponto inicial biblioteca
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

Polygon createPolygon(List<LatLng> points, String label, Color color) {
  return Polygon(
    borderStrokeWidth: 5,
    borderColor: Colors.black87,
    isFilled: true,
    points: points,
    color: color,
    label: label,
  );
}

Polygon degreeStairs = createPolygon(
  pointsDegreeStairs,
  "Escada",
  Colors.brown.shade300,
);

Polygon elevatorEntrance = createPolygon(
  pointsElevatorEntrance,
  "Elevador",
  Colors.brown.shade500,
);

Polygon elevator1 = createPolygon(
  pointsElevatorEntrance1,
  "Elevador",
  Colors.brown.shade500,
);

Polygon elevatorSideEntrance = createPolygon(
  pointsElevatorSideEntrance,
  "Elevador",
  Colors.brown.shade500,
);

Polygon externalPolygon = createPolygon(
  pointsExternalPolygon,
  "",
  Colors.grey.shade500,
);

Polygon internalRightSpan = createPolygon(
  pointsInternalRightSpan,
  "Jardim Aberto",
  Colors.green,
);

Polygon internalLeftSpan = createPolygon(
  pointsInternalLeftSpan,
  "Jardim Aberto",
  Colors.green,
);

Polygon unknownSector1 = createPolygon(
  pointsUnknownSector1,
  "",
  Colors.grey.shade500,
);

Polygon unknownSector3 = createPolygon(
  pointsUnknownSector3,
  "",
  Colors.grey.shade500,
);

Polygon unknownSector4 = createPolygon(
  pointsUnknownSector4,
  "",
  Colors.grey.shade500,
);

Polygon unknownSector5 = createPolygon(
  pointsUnknownSector5,
  "",
  Colors.grey.shade500,
);

Polygon unknownSector6 = createPolygon(
  pointsUnknownSector6,
  "",
  Colors.grey.shade500,
);

Polygon unknownSector7 = createPolygon(
  pointsUnknownSector7,
  "",
  Colors.grey.shade500,
);

Polygon stair1 = createPolygon(
  pointsStair1,
  "Escada",
  Colors.brown.shade300,
);

Polygon stair5 = createPolygon(
  pointsStair5,
  "Escada",
  Colors.brown.shade300,
);

Polygon stair3 = createPolygon(
  pointsStair3,
  "Escada",
  Colors.brown.shade300,
);

Polygon stair4 = createPolygon(
  pointsStair4,
  "Escada",
  Colors.brown.shade300,
);

Polygon stair2 = createPolygon(
  pointsStair2,
  "Escada",
  Colors.brown.shade300,
);

Polygon unknownSector2 = createPolygon(
  pointsUnknownSector2,
  "",
  Colors.grey.shade500,
);

// Polygon elevatorEntrance = Polygon(
//   borderStrokeWidth: 5,
//   borderColor: Colors.black87,
//   isFilled: true,
//   points: pointsElevatorEntrance,
//   color: Colors.grey.shade500,
//   label: "Elevador",
// );

// Polygon externalPolygon = Polygon(
//   borderStrokeWidth: 5,
//   borderColor: Colors.black87,
//   isFilled: true,
//   points: pointsExternalPolygon,
//   color: Colors.grey.shade500,
// );

// Polygon internalRightSpan = Polygon(
//   points: pointsInternalRightSpan,
//   borderStrokeWidth: 5,
//   borderColor: Colors.black87,
//   isFilled: true,
//   color: Colors.green,
//   label: "Jardim Aberto"
// );

// Polygon internalLeftSpan = Polygon(
//   points: pointsInternalLeftSpan,
//   borderStrokeWidth: 5,
//   borderColor: Colors.black87,
//   isFilled: true,
//   color: Colors.green,
//   label: "Jardim Aberto"
// );

