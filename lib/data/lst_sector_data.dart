import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:wia/models/sector.dart';
import 'package:latlong2/latlong.dart';

import 'lst_polygon_data.dart';

final List<Sector> lstSector = [
  //'Selecione um destino:' : '',
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
        borderStrokeWidth: 5,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "Atendimento",
      ),
      entries: [
        Polyline(
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
          points: [
            LatLng(-25.42889837, -49.26777957),
            LatLng(-25.42891567, -49.26777098),
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
          borderStrokeWidth: 6,
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
        borderStrokeWidth: 5,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        labelStyle: TextStyle(color: Colors.white),
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
          borderStrokeWidth: 6,
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
        borderStrokeWidth: 5,
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
            LatLng(-25.42934191, -49.26766031),
            LatLng(-25.42935386, -49.26765484)
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42930632, -49.26767670),
          LatLng(-25.42948136, -49.26759728),
          LatLng(-25.42951875, -49.26768807),
          LatLng(-25.42949688, -49.26769772),
          LatLng(-25.42950022, -49.26770606),
          LatLng(-25.42947365, -49.26771625),
          LatLng(-25.42947651, -49.26772590),
          LatLng(-25.42934882, -49.26778435),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42928914, -49.26741159),
            LatLng(-25.42929884, -49.26740662)
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42928883, -49.26741180),
          LatLng(-25.42925191, -49.26731967),
          LatLng(-25.42930784, -49.26729469),
          LatLng(-25.42931223, -49.26730528),
          LatLng(-25.42935670, -49.26728400),
          LatLng(-25.42938992, -49.26736466),
          LatLng(-25.42938992, -49.26736466),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42886314, -49.26787667),
            LatLng(-25.42885791, -49.26786422)
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42880165, -49.26791642),
          LatLng(-25.42878077, -49.26785749),
          LatLng(-25.42884398, -49.26782691),
          LatLng(-25.42886715, -49.26788368),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42901451, -49.26743524),
            LatLng(-25.42903244, -49.26742678),
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        ),
        Polyline(
          points: [
            LatLng(-25.42905784, -49.26757516),
            LatLng(-25.42909344, -49.26755848),
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42906312, -49.26741320),
          LatLng(-25.42908377, -49.26746456),
          LatLng(-25.42906341, -49.26747625),
          LatLng(-25.42908727, -49.26754040),
          LatLng(-25.42904539, -49.26755663),
          LatLng(-25.42902237, -49.26749429),
          LatLng(-25.42900441, -49.26749937),
          LatLng(-25.42898770, -49.26745057),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42876405, -49.26781467),
            LatLng(-25.42875310, -49.26778928),
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42876456, -49.26781450),
          LatLng(-25.42875431, -49.26779016),
          LatLng(-25.42882923, -49.26775522),
          LatLng(-25.42883527, -49.26777878),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42884248, -49.26782687),
            LatLng(-25.42883003, -49.26783285),
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.4288035, -49.2678398),
          LatLng(-25.4287862, -49.2678072),
          LatLng(-25.4288239, -49.2677878),
          LatLng(-25.4288382, -49.2678255),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42891623, -49.26790144),
            LatLng(-25.42893018, -49.26789652),
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42880669, -49.26795429),
          LatLng(-25.42893018, -49.26789652),
          LatLng(-25.42895906, -49.26796723),
          LatLng(-25.42888436, -49.26800806),
          LatLng(-25.42888038, -49.26799412),
          LatLng(-25.42882860, -49.26801902),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42887403, -49.26790654),
            LatLng(-25.42887752, -49.26791426),
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42879225, -49.26792142),
          LatLng(-25.42886295, -49.26788607),
          LatLng(-25.42887889, -49.26791744),
          LatLng(-25.42880669, -49.26795279),
        ],
        borderStrokeWidth: 5,
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
            LatLng(-25.42887030, -49.26788152),
            LatLng(-25.42888125, -49.26787667),
          ],
          borderStrokeWidth: 6,
          color: Colors.white,
          borderColor: Colors.white,
        )
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42888885, -49.26789354),
          LatLng(-25.42892818, -49.26788059),
          LatLng(-25.42891823, -49.26785968),
          LatLng(-25.42888287, -49.26787661),
        ],
        borderStrokeWidth: 5,
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
            points: [
              LatLng(-25.42905360, -49.26791380),
              LatLng(-25.42901700, -49.26781632),
            ],
            borderStrokeWidth: 6,
            color: Colors.black87,
            borderColor: Colors.black87),
        Polyline(
            points: [
              LatLng(-25.429002906, -49.267796998),
              LatLng(-25.429006174, -49.267806054),
            ],
            borderStrokeWidth: 6,
            color: Colors.white,
            borderColor: Colors.white),
        Polyline(
            points: [
              LatLng(-25.42902858, -49.26784583),
              LatLng(-25.42902335, -49.26782977),
            ],
            borderStrokeWidth: 6,
            color: Colors.white,
            borderColor: Colors.white),
        Polyline(
            points: [
              LatLng(-25.42895576, -49.26795450),
              LatLng(-25.42895987, -49.26796645),
            ],
            borderStrokeWidth: 6,
            color: Colors.white,
            borderColor: Colors.white),
      ],
      polygon: Polygon(
        points: [
          LatLng(-25.42896354, -49.26796723),
          LatLng(-25.42892121, -49.26785968),
          LatLng(-25.42899385, -49.26782379),
          LatLng(-25.42898451, -49.26780325),
          LatLng(-25.42900057, -49.26779541),
          LatLng(-25.42900954, -49.26781931),
          LatLng(-25.42904613, -49.26780213),
          LatLng(-25.42908497, -49.26789848),
          LatLng(-25.42902976, -49.26792391),
          LatLng(-25.42903325, -49.26793487),
        ],
        borderStrokeWidth: 5,
        borderColor: Colors.black87,
        color: Colors.grey.shade400,
        isFilled: true,
        label: "COPAP",
      ),
      info: "COPAP"),
];
