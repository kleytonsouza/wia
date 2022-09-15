import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/extension_api.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart';
import 'package:wia/util/popup.dart';

import 'package:wia/util/route_from_to.dart';
import 'package:wia/models/sector.dart';
import 'package:wia/data/lst_all_vertex.dart';
import '../data/lst_sector_data.dart';
import '../models/point.dart';

class Location extends StatefulWidget {
  Location({Key? key, required this.sector}) : super(key: key);

  Sector sector;

  @override
  _Location createState() => _Location();
}

//-25.39954147933631, -49.250469280756825
class _Location extends State<Location> {
  //final MapController _controller = MapController();
  Sector currentSelectedValue = lstSector[0];
  bool popupShown = false;
  bool setDestiny = false;

  final PopupController _popupLayerController = PopupController();

  List<Marker> markers() {
    if (setDestiny == true) {
      return [
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          width: 50,
          height: 50,
          point: LatLng(double.parse(sector.coordinate[0]),
              double.parse(sector.coordinate[1])),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.red,
            size: 50,
          ),
        ),
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          width: 50,
          height: 50,
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
          width: 40,
          height: 40,
          anchorPos: AnchorPos.align(AnchorAlign.top),
          point: LatLng(double.parse(sector.coordinate[0]),
              double.parse(sector.coordinate[1])),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.deepPurple,
            size: 40,
          ),
        )
      ];
    }
  }

  List<Polyline> routeBetweenTwoPoints(int from, int to) {
    List<Polyline> points = [];
    if (setDestiny == false) {
      points.add(
        Polyline(
          points: [
            LatLng(double.parse(sector.coordinate[0]),
                double.parse(sector.coordinate[1]))
          ],
        ),
      );
      return points;
    }
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

  Sector get sector => widget.sector;

  @override
  Widget build(BuildContext context) {
    //List<String> qrSplitted = qrCodeLocation.coordinate.split(',');
    String nameSector = lstSector
        .firstWhere((element) => element.coordinate == sector.coordinate)
        .name;

    return Scaffold(
      appBar: AppBar(
        title: FittedBox(child: Text("Você esta na $nameSector")),
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
                onTap: (_, __) => _popupLayerController.hideAllPopups(),
                center: LatLng(-25.429096, -49.267650),
                minZoom: 17,
                maxZoom: 22,
                //swPanBoundary: LatLng(-25.429230511601687, -49.268042791805925),
                //nePanBoundary: LatLng(-25.42886227622278, -49.267256952072394),
                zoom: 19,
              ),
              // nonRotatedChildren: [
              //   AttributionWidget.defaultWidget(
              //     source: '© OpenStreetMap contributors',
              //     onSourceTapped: () {},
              //   ),
              // ],
              children: [
                TileLayer(
                  tileProvider: AssetTileProvider(),
                  maxZoom: 22,
                  //retinaMode: true,
                  tms: true,
                  urlTemplate: "assets/k1k1k1/Mapnik/{z}/{x}/{y}.png",
                ),
                // MarkerLayer(
                //   markers: markers(),
                // ),
                PopupMarkerLayerWidget(
                  options: PopupMarkerLayerOptions(
                    popupController: _popupLayerController,
                    markers: markers(),
                    markerRotateAlignment:
                        PopupMarkerLayerOptions.rotationAlignmentFor(
                            AnchorAlign.top),
                    popupBuilder: (BuildContext context, Marker marker) =>
                        ExamplePopup(marker),
                    selectedMarkerBuilder: (context, marker) => const Icon(
                      Icons.location_on,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ),
                ),
                PolylineLayer(
                  //polylineCulling: false,
                  polylines:
                      routeBetweenTwoPoints(sector.id, currentSelectedValue.id),
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
