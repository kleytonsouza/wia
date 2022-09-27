import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:wia/utils/route_from_to.dart';
import 'package:wia/models/sector.dart';
import 'package:wia/data/lst_all_vertex.dart';
import '../data/lst_polygon_data.dart';
import '../data/lst_sector_data.dart';
import '../models/point.dart';

class MyLocation extends StatefulWidget {
  MyLocation({Key? key, required this.sector}) : super(key: key);

  Sector sector;

  @override
  _MyLocation createState() => _MyLocation();
}

class _MyLocation extends State<MyLocation> {
  Sector currentSelectedValue = lstSector[0];

  bool setDestiny = false;

  List<Marker> markers() {
    if (setDestiny == true) {
      return [
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          width: 50,
          height: 50,
          anchorPos: AnchorPos.align(AnchorAlign.top),
          point: LatLng(double.parse(qrSector.coordinate[0]),
              double.parse(qrSector.coordinate[1])),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.green,
            size: 50,
          ),
        ),
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          width: 50,
          height: 50,
          anchorPos: AnchorPos.align(AnchorAlign.top),
          point: LatLng(double.parse(currentSelectedValue.coordinate[0]),
              double.parse(currentSelectedValue.coordinate[1])),
          builder: (ctx) => Icon(
            Icons.location_on,
            color: Colors.purple,
            size: 50,
          ),
        ),
      ];
    } else {
      return [
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          width: 50,
          height: 50,
          anchorPos: AnchorPos.align(AnchorAlign.top),
          point: LatLng(double.parse(qrSector.coordinate[0]),
              double.parse(qrSector.coordinate[1])),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.yellowAccent,
            size: 50,
          ),
        ),
      ];
    }
  }

  List<LatLng> lstLngLat = [
    LatLng(-25.428825, -49.26805),
    LatLng(-25.429043, -49.267934),
    LatLng(-25.429037, -49.267917),
    LatLng(-25.429275, -49.267807),
    LatLng(-25.429282, -49.267824),
    LatLng(-25.429535, -49.267708),
    LatLng(-25.429358, -49.267259),
    LatLng(-25.429319, -49.267279),
    LatLng(-25.429311, -49.267261),
    LatLng(-25.429159, -49.267341),
    LatLng(-25.429162, -49.267351),
    LatLng(-25.42914, -49.267359),
    LatLng(-25.429151, -49.267384),
    LatLng(-25.429104, -49.267407),
    LatLng(-25.429071, -49.267328),
    LatLng(-25.428891, -49.267418),
    LatLng(-25.42892, -49.267492),
    LatLng(-25.428876, -49.267512),
    LatLng(-25.42887, -49.267494),
    LatLng(-25.428839, -49.267506),
    LatLng(-25.428834, -49.267498),
    LatLng(-25.42868, -49.267579),
    LatLng(-25.428682, -49.267588),
    LatLng(-25.428645, -49.26761),
    LatLng(-25.428825, -49.26805)
  ];

  List<Polyline> routeBetweenTwoPoints(int from, int to) {
    List<Polyline> points = [];
    if (setDestiny == false) {
      points.add(
        Polyline(
          points: [
            //...lstLngLat.toList()
            // LatLng(double.parse(sector.coordinate[0]),
            //     double.parse(sector.coordinate[1]))
          ],
          color: Colors.black,
          strokeWidth: 6,
        ),
      );
      return points;
    }
    print(from);
    print(to);
    List routeFromTo = RouteFromTo(idFrom: from, idTo: to).listPoints;
    print(routeFromTo);
    points.add(
      Polyline(points: [
        ...routeFromTo.map((id) {
          Point vertex = allVertex.firstWhere((vertex) => vertex.id == id);
          return LatLng(
            double.parse(vertex.coordinate[0]),
            double.parse(vertex.coordinate[1]),
          );
        }),
      ], color: Colors.blue, strokeWidth: 6),
    );
    // List routeFromTo = RouteFromTo(idFrom: from, idTo: to).listPoints;
    // points.add(
    //   Polyline(points: [
    //     LatLng(double.parse(sector.coordinate[0]),
    //         double.parse(sector.coordinate[1])),
    //     LatLng(-25.42886220, -49.26787319),
    //     LatLng(-25.42882776, -49.2677764),
    //     LatLng(double.parse(sectorsLocations[8].coordinate[0]),
    //         double.parse(sectorsLocations[8].coordinate[1])),
    //   ], color: Colors.blue, strokeWidth: 6),
    //points.add(LatLng());

    return points;
  }

  Sector get qrSector => widget.sector;

  @override
  Widget build(BuildContext context) {
    Sector sector = lstSector
        .firstWhere((element) => element.coordinate == qrSector.coordinate);

    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
            child: Row(
          children: [
            Text("Você esta na ${sector.name}"),
            Icon(
              Icons.location_on,
              color: setDestiny ? Colors.green : Colors.yellowAccent,
              size: 40,
            ),
          ],
        )),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Destino Selecionado: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: DropdownButton(
                  icon: setDestiny
                      ? Icon(Icons.location_on, color: Colors.purple)
                      : Icon(Icons.account_tree_sharp),
                  dropdownColor: const Color.fromRGBO(176, 224, 247, 0.973),
                  style: const TextStyle(
                    fontSize: 10.5,
                    color: Colors.black,
                    fontFamily: "verdana_regular",
                  ),
                  hint: const Text(
                    "Selecione um Destino:",
                    style: TextStyle(
                      color: Colors.black,
                      //fontSize: 16,
                      fontFamily: "verdana_regular",
                    ),
                  ),
                  value: currentSelectedValue,
                  isDense: true,
                  onChanged: (newValue) {
                    newValue as Sector;
                    setState(
                      () {
                        currentSelectedValue = newValue;
                        setDestiny =
                            currentSelectedValue.id != 0 ? true : false;
                      },
                    );
                  },
                  items: lstSector.map((loc) {
                    return DropdownMenuItem(
                      value: loc,
                      child: Text(loc.name),
                    );
                  }).toList()..sort(((a, b) => a.value!.name.compareTo(b.value!.name))),
                ),
              ),
            ],
          ),
          Flexible(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(-25.429096, -49.267650),
                minZoom: 17,
                maxZoom: 22,
                //swPanBoundary: LatLng(-25.429230511601687, -49.268042791805925),
                //nePanBoundary: LatLng(-25.42886227622278, -49.267256952072394),
                zoom: 19,
              ),
              children: [
                TileLayer(
                  tileProvider: AssetTileProvider(),
                  maxZoom: 22,
                  tms: true,
                  urlTemplate: "assets/k1_tms/Mapnik/{z}/{x}/{y}.png",
                ),
                //desenha os polygonos e destaca o(s) selecionado(s)
                PolygonLayer(
                  polygons: [
                        externalPolygon,
                        internalLeftSpan,
                        internalRightSpan,
                        degreeStairs,
                        elevatorEntrance,
                        unknownSector1,
                        stair1,
                        unknownSector2,
                        unknownSector3,
                        unknownSector4,
                        unknownSector5,
                        unknownSector6,
                        unknownSector7,
                        stair2,
                        stair3,
                        stair4,
                        stair5,
                        elevatorSideEntrance,
                        elevator1,
                      ] +
                      lstSector.map((e) => e.polygon).toList(),
                ),
                currentSelectedValue != lstSector[0]
                    ? PolygonLayer(
                        polygons: [
                          Polygon(
                              points: sector.polygon.points,
                              isFilled: true,
                              color: Colors.cyan,
                              label: sector.name),
                          Polygon(
                              points: currentSelectedValue.polygon.points,
                              isFilled: true,
                              color: Colors.deepPurple.shade300,
                              label: currentSelectedValue.name),
                        ],
                      )
                    : PolygonLayer(
                        polygons: [
                          Polygon(
                              points: sector.polygon.points,
                              isFilled: true,
                              color: Colors.cyan,
                              label: sector.name),
                        ],
                      ),
                //desenha a rota qndo selecionada
                PolylineLayer(
                  polylines: routeBetweenTwoPoints(
                          sector.id, currentSelectedValue.id) +
                      [
                        Polyline(
                          points: [
                            LatLng(-25.42914149, -49.26761575),
                            LatLng(-25.42913153, -49.26758985)
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42917085, -49.26774241),
                            LatLng(-25.42918741, -49.26773472)
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42908515, -49.26746704),
                            LatLng(-25.42906745, -49.26747542)
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42929894, -49.26751301),
                            LatLng(-25.42931432, -49.26755223)
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.black87,
                          borderColor: Colors.black87,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42901934, -49.26749680),
                            LatLng(-25.42900390, -49.26750381)
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42885274, -49.26779926),
                            LatLng(-25.42883553, -49.26780746)
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42887040, -49.26776226),
                            LatLng(-25.42886299, -49.26774227),
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42894423, -49.26774313),
                            LatLng(-25.42895530, -49.26773896)
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(
                              -25.42889625,
                              -49.26771467,
                            ),
                            LatLng(
                              -25.42890090,
                              -49.26772708,
                            )
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42906823, -49.26758401),
                            LatLng(-25.42908966, -49.26757372),
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        ),
                        Polyline(
                          points: [
                            LatLng(-25.42914345, -49.26768957),
                            LatLng(-25.42915532, -49.26771762),
                          ],
                          borderStrokeWidth: 6,
                          color: Colors.white,
                          borderColor: Colors.white,
                        )
                      ],
                ),
                //desenhas as portas/entradas dos polygons
                PolylineLayer(
                    polylines: lstSector
                        .expand((element) => element.entries)
                        .toList()),
                MarkerLayer(
                  markers: markers(),
                ),
              ],
            ),
          ),
          Container(
              height: 35,
              color: const Color.fromRGBO(1, 63, 122, 1),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("©2021 - Universidade Federal do Paraná",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))
                  ]))
        ],
      ),
    );
  }
}
