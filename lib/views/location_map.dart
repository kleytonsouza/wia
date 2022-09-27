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
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.red,
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
            color: Colors.blue,
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
        title: FittedBox(child: Text("Você esta na ${sector.name}")),
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
                  }).toList(),
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
