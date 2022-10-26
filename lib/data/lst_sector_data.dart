import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:wia/models/sector.dart';
import 'package:latlong2/latlong.dart';

import 'lst_infra_sector_data.dart';

List<Sector> lstSector = [
  Sector(
      id: 0,
      name: "Selecione um destino",
      coordinate: ['00.00', '00.00'],
      entries: [
        Polyline(points: [LatLng(0, 0)])
      ],
      polygon: Polygon(points: [LatLng(0, 0), LatLng(0, 0)]),
      info: "Selecione um destino"),
  Sector(
      id: 1,
      name: "Atendimento PROGRAD",
      coordinate: ['-25.42891780', '-49.26780143'],
      polygon: Polygon(
        points: [
          LatLng(-25.42889940, -49.26777964),
          LatLng(-25.42898223, -49.26774047),
          LatLng(-25.42900345, -49.26779540),
          LatLng(-25.42898675, -49.26780319),
          LatLng(-25.42899399, -49.26782344),
          LatLng(-25.42892675, -49.26785479),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Atendimento",
      ),
      entries: [
        Polyline(
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
          points: [
            LatLng(-25.42890037, -49.26777957),
            LatLng(-25.42891567, -49.26777200),
          ],
        )
      ],
      info: "Atendimento ao público PROGRAD"),
  Sector(
      id: 2,
      name: "Biblioteca",
      coordinate: ['-25.42879171', '-49.26766299'],
      entries: [
        Polyline(
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
          points: [
            LatLng(-25.42881113, -49.26774175),
            LatLng(-25.42882187, -49.26773507),
          ],
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42875461, -49.26778727),
          pointsExternalPolygon[14],
          pointsExternalPolygon[15],
          pointsExternalPolygon[16],
          pointsExternalPolygon[17],
          pointsExternalPolygon[18],
          pointsExternalPolygon[19],
          pointsExternalPolygon[20],
          pointsExternalPolygon[21],
          LatLng(-25.42895430, -49.26766998),
          LatLng(-25.42882535, -49.26773395),
          LatLng(-25.42881175, -49.26774249),
          LatLng(-25.42881783, -49.26775669),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        //labelStyle: TextStyle(color: Colors.white),
        isFilled: true,
        label: "Biblioteca",
      ),
      info: "Biblioteca jurídica"),
  Sector(
      id: 3,
      name: "Diplomas",
      coordinate: ['-25.42938526', '-49.26755379'],
      entries: [
        Polyline(
          points: [
            LatLng(
              -25.42938648,
              -49.26753782,
            ),
            LatLng(-25.42937204, -49.26754400),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42939441, -49.26753453),
          LatLng(-25.42942750, -49.26761964),
          LatLng(-25.42935551, -49.26765376),
          LatLng(-25.42932025, -49.26756636),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Diplomas",
      ),
      info: "Unidade de diplomas"),
  Sector(
      id: 4,
      name: "CIPEAD",
      coordinate: ['-25.42935469', '-49.26766968'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42934191, -49.26765931),
            LatLng(-25.42935386, -49.26765384)
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42930513, -49.26767768),
          LatLng(-25.42948090, -49.26759140),
          pointsExternalPolygon[0],
          pointsExternalPolygon[1],
          pointsExternalPolygon[2],
          pointsExternalPolygon[3],
          pointsExternalPolygon[4],
          LatLng(-25.42934882, -49.26778635),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "CIPEAD",
      ),
      info: "EAD PROGRAD"),
  Sector(
      id: 5,
      name: "COAFE",
      coordinate: ['-25.42930129', '-49.26739021'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42928914, -49.26741129),
            LatLng(-25.42930084, -49.26740662)
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42928883, -49.26741180),
          LatLng(-25.42925100, -49.26731952),
          pointsExternalPolygon[31],
          pointsExternalPolygon[32],
          pointsExternalPolygon[33],
          pointsExternalPolygon[34],
          // LatLng(-25.42930784, -49.26729469),
          // LatLng(-25.42931223, -49.26730528),
          // LatLng(-25.42935670, -49.26728400),
          // LatLng(-25.42938992, -49.26736466),
          // LatLng(-25.42938992, -49.26736466),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "COAFE",
      ),
      info: "Unidade de Estágio"),
  Sector(
      id: 6,
      name: "COSIS",
      coordinate: ['-25.42885259', '-49.26787655'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42886314, -49.26787367),
            LatLng(-25.42885791, -49.26786122)
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          pointsExternalPolygon[13],
          LatLng(-25.42878020, -49.26785951),
          LatLng(-25.42884398, -49.26782691),
          LatLng(-25.42886715, -49.26788368),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "COSIS",
        labelStyle: TextStyle(color: Colors.black),
      ),
      info: "Unidade de Informática"),
  Sector(
      id: 7,
      name: "Entrada/Saida Principal",
      coordinate: ['-25.42903573', '-49.26746404'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42901451, -49.26743450),
            LatLng(-25.42903244, -49.26742620),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        ),
        Polyline(
          points: [
            LatLng(-25.42905784, -49.26757416),
            LatLng(-25.42909344, -49.26755848),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42898347, -49.26744996),
          LatLng(-25.42906281, -49.26741251),
          LatLng(-25.42908440, -49.26746690),
          LatLng(-25.42906715, -49.26747498),
          LatLng(-25.42909161, -49.26753953),
          LatLng(-25.42908661, -49.26754177),
          LatLng(-25.42909345, -49.26755864),
          LatLng(-25.42905769, -49.26757443),
          LatLng(-25.42905131, -49.26755918),
          LatLng(-25.42904461, -49.26756245),
          LatLng(-25.42901938, -49.26749693),
          LatLng(-25.42900381, -49.26750356),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Entr. Principal",
      ),
      info: "Entrada/Saida Principal pela Praça Santos Andrade"),
  Sector(
      id: 8,
      name: "Entrada/Saida Lateral",
      coordinate: ['-25.42877982', '-49.26779419'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42876306, -49.26781550),
            LatLng(-25.42875431, -49.26778916),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        ),
        Polyline(
          points: [
            LatLng(-25.42881783, -49.26775769),
            LatLng(-25.42882762, -49.26778466),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42876306, -49.26781550),
          LatLng(-25.42875431, -49.26778916),
          LatLng(-25.42881783, -49.26775769),
          LatLng(-25.42882762, -49.26778466),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Entr. Lateral",
      ),
      info: "Entrada/Saida Lateral pela rua Alfredo Bufren"),
  Sector(
      id: 6,
      name: "Financeiro",
      coordinate: ['-25.42881067', '-49.26781387'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42884248, -49.26782787),
            LatLng(-25.42883003, -49.26783385),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42884398, -49.26782691),
          LatLng(-25.42880375, -49.26784717),
          LatLng(-25.42878741, -49.26780409),
          LatLng(-25.42882762, -49.26778466),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Financeiro",
      ),
      info: "Financeiro"),
  Sector(
      id: 27,
      name: "COPAC/COPEG",
      coordinate: ['-25.42892616', '-49.26792775'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42891123, -49.26790244),
            LatLng(-25.42893218, -49.26789252),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42880669, -49.26795279),
          LatLng(-25.42893918, -49.26788852),
          LatLng(-25.42896354, -49.26797023),
          pointsExternalPolygon[9],
          pointsExternalPolygon[10],
          pointsExternalPolygon[11],
          // LatLng(-25.42888038, -49.26799412),
          // LatLng(-25.42882860, -49.26801902),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "COPAC/COPEG",
      ),
      info: "COPAC/COPEG"),
  Sector(
      id: 27,
      name: "Gabinete Pró-reitora",
      coordinate: ['-25.42886347', '-49.26791467'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42887403, -49.26790454),
            LatLng(-25.42887752, -49.26791426),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          //LatLng(-25.42879225, -49.26792142),
          pointsExternalPolygon[12],
          LatLng(-25.42886715, -49.26788368),
          LatLng(-25.42887889, -49.26791744),
          LatLng(-25.42880669, -49.26795279),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Gabinete Pró-reitora",
      ),
      info: "Gabinete Pró-reitora"),
  Sector(
      id: 27,
      name: "Secretaria PROGRAD",
      coordinate: ['-25.42890854', '-49.26788761'],
      entries: [
        Polyline(
          points: [
            LatLng(-25.42886830, -49.26788302),
            LatLng(-25.42888125, -49.26787707),
          ],
          borderStrokeWidth: 5,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42887889, -49.26791744),
          LatLng(-25.42886715, -49.26788368),
          LatLng(-25.42892121, -49.26785868),
          LatLng(-25.42893618, -49.26789052),
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Secretaria PROGRAD",
      ),
      info: "Secretaria PROGRAD"),
  Sector(
      id: 28,
      name: "COPAP",
      coordinate: ['-25.42900906', '-49.26783690'],
      entries: [
        Polyline(
            // divisão sala coordenação
            points: [
              LatLng(-25.42905360, -49.26791380),
              LatLng(-25.42901700, -49.26781632),
            ],
            borderStrokeWidth: 5,
            color: Colors.black87,
            borderColor: Colors.black87),
        Polyline(
            //entrada lateral externa
            points: [
              LatLng(-25.429002906, -49.267796998),
              LatLng(-25.429006174, -49.267806054),
            ],
            borderStrokeWidth: 5,
            color: Colors.white,
            borderColor: Colors.white),
        Polyline(
            //Entrada sala da coordenação
            points: [
              LatLng(-25.42902858, -49.26784723),
              LatLng(-25.42902335, -49.26783277),
            ],
            borderStrokeWidth: 5,
            color: Colors.white,
            borderColor: Colors.white),
        Polyline(
            //Entrada fundos COPAP/COPEG
            points: [
              LatLng(-25.42896254, -49.26796823),
              LatLng(-25.42895887, -49.26795845),
            ],
            borderStrokeWidth: 5,
            color: Colors.white,
            borderColor: Colors.white),
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42896354, -49.26797023),
          LatLng(-25.42892121, -49.26785868),
          LatLng(-25.42899385, -49.26782379),
          LatLng(-25.42898691, -49.26780325),
          LatLng(-25.42900290, -49.26779599),
          LatLng(-25.42901154, -49.26781831),
          LatLng(-25.42904813, -49.26780113),
          LatLng(-25.42908497, -49.26789948),
          pointsExternalPolygon[7],
          pointsExternalPolygon[8],
        ],
        borderStrokeWidth: 4,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "COPAP",
      ),
      info: "COPAP"),

];
