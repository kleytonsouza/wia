import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:wia/util/route_from_to.dart';
import 'package:wia/models/sector.dart';
import 'package:wia/data/lst_all_vertex.dart';
import 'data/lst_sector_data.dart';
import 'models/point.dart';

class Location extends StatefulWidget {
  Location({Key? key, required this.sector}) : super(key: key);

  Sector sector;

  @override
  _Location createState() => _Location();
}

class _Location extends State<Location> {
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
            color: Colors.deepPurple,
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

  List<LatLng> externalPolygon = [
    LatLng(-25.4295195, -49.2676900),
    LatLng(-25.42950141, -49.26770472),
    LatLng(-25.42947593, -49.26771699),
    LatLng(-25.42947960, -49.26772737),
    LatLng(-25.42934317, -49.26778943),
    LatLng(-25.42933905, -49.26777809),
    LatLng(-25.42903154, -49.26792655),
    LatLng(-25.42903589, -49.26793505),
    LatLng(-25.42888604, -49.26799674),
    LatLng(-25.42883350, -49.26802124),
    LatLng(-25.42879328, -49.26791909),
    LatLng(-25.42880016, -49.26791043),
    LatLng(-25.42872074, -49.26769747),
    LatLng(-25.42870684, -49.26770278),
    LatLng(-25.42867116, -49.26760787),
    LatLng(-25.42872129, -49.26757904),
    LatLng(-25.42871858, -49.26756821),
    LatLng(-25.42886299, -49.26749736),
    LatLng(-25.42886709, -49.26750949),
    LatLng(-25.42889050, -49.26749779),
    LatLng(-25.42890034, -49.26751973),
    LatLng(-25.42895996, -49.26749036),
    LatLng(-25.42895070, -49.26746465),
    LatLng(-25.42909557, -49.26739476),
    LatLng(-25.42910542, -49.26742175),
    LatLng(-25.42916131, -49.26739608),
    LatLng(-25.42915425, -49.26737676),
    LatLng(-25.42917371, -49.26735325),
    LatLng(-25.42930610, -49.26729425),
    LatLng(-25.42935827, -49.26728318),
    LatLng(-25.42939433, -49.26736972),
    LatLng(-25.42938472, -49.26737420),
    LatLng(-25.42947287, -49.26759167),
    LatLng(-25.42948207, -49.26759049),
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
      print('passou');
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
    //List<String> qrSplitted = qrCodeLocation.coordinate.split(',');
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
                //crs: ,
                center: LatLng(-25.429096, -49.267650),
                minZoom: 18,
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
                  urlTemplate: "assets/k1_tms/Mapnik2/{z}/{x}/{y}.png",
                ),
                PolygonLayer(
                  polygons: [
                    Polygon(
                      borderStrokeWidth: 3,
                      borderColor: Colors.red,
                      points: externalPolygon,
                    ),
                    sector.polygon,
                    currentSelectedValue.polygon,
                  ],
                ),
                PolylineLayer(
                  //polylineCulling: false,
                  polylines:
                      routeBetweenTwoPoints(sector.id, currentSelectedValue.id),
                ),
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
