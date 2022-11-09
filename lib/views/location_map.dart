import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:plugin_pdr/plugin_pdr.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../utils/route_from_to.dart';
import '../models/infra_sector.dart';
import '../models/sector.dart';
import '../models/point.dart';
import '../data/lst_all_vertex.dart';
import '../data/lst_infra_sector_data.dart';
import '../data/lst_sector_data.dart';

class MyLocation extends StatefulWidget {
  MyLocation({Key? key, required this.sector}) : super(key: key);

  Sector sector;

  @override
  _MyLocation createState() => _MyLocation();
}

class _MyLocation extends State<MyLocation> {
  final _pluginPdrPlugin = PluginPdr();
  final EventChannel _eventChannel = const EventChannel('plugin_pdr/stream');
  Stream<dynamic> _pdrStream = const Stream.empty();

  Future<void> _pdr() async {
    return await _pluginPdrPlugin.pdr(qrSector.coordinate);
  }

  Stream<dynamic> pdrStream() {
    _pdrStream = _eventChannel.receiveBroadcastStream();
    return _pdrStream;
  }

  Sector currentSelectedValue = lstSector[0];
  
  bool setDestiny = false;

  List<Marker> markers() {
    if (setDestiny == true) {
      return [
        Marker(
          width: 50,
          height: 50,
          anchorPos: AnchorPos.align(AnchorAlign.top),
          point: LatLng(
            double.parse(qrSector.coordinate[0]),
            double.parse(qrSector.coordinate[1]),
          ),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.green,
            size: 50,
          ),
        ),
        Marker(
          width: 50,
          height: 50,
          anchorPos: AnchorPos.align(AnchorAlign.top),
          point: LatLng(
            double.parse(currentSelectedValue.coordinate[0]),
            double.parse(currentSelectedValue.coordinate[1]),
          ),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.purple,
            size: 50,
          ),
        ),
      ];
    } else {
      return [
        Marker(
          width: 50,
          height: 50,
          anchorPos: AnchorPos.align(AnchorAlign.top),
          point: LatLng(
            double.parse(qrSector.coordinate[0]),
            double.parse(qrSector.coordinate[1]),
          ),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.yellowAccent,
            size: 50,
          ),
        ),
      ];
    }
  }

  List<Polyline> routeBetweenTwoPoints(int from, int to) {
    List<Polyline> points = [];
    if (setDestiny == false) {
      points.add(
        Polyline(
          points: [],
          color: Colors.black,
          strokeWidth: 6,
        ),
      );
      return points;
    }
    List routeFromTo = RouteFromTo(idFrom: from, idTo: to).listPoints;
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
              Text("Você esta em ${sector.name}"),
              Icon(
                Icons.location_on,
                color: setDestiny ? Colors.green : Colors.yellowAccent,
                size: 40,
              ),
            ],
          ),
        ),
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
                      ? const Icon(Icons.location_on, color: Colors.purple)
                      : const Icon(Icons.account_tree_sharp),
                  dropdownColor: const Color.fromRGBO(176, 224, 247, 0.973),
                  style: const TextStyle(
                    //fontSize: 10.5,
                    color: Colors.black,
                    fontFamily: "verdana_regular",
                  ),
                  hint: const Text(
                    "Selecione um Destino:",
                    style: TextStyle(
                      color: Colors.black,
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
                  }).toList()
                    ..sort(
                      (a, b) => a.value!.name.compareTo(b.value!.name),
                    ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: kIsWeb ? () => _pdr() : null,
                  child: kIsWeb ? const Text('PDR leitura') : const Text(" "),
                ),
              ),
            ],
          ),
          Flexible(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(-25.4290388, -49.2675310),
                minZoom: 18,
                maxZoom: 22,
                swPanBoundary: LatLng(-25.4295623, -49.2679661),
                nePanBoundary: LatLng(-25.4286214, -49.2673541),
                zoom: 19,
              ),
              children: [
                TileLayer(
                  tileProvider: AssetTileProvider(),
                  maxZoom: 22,
                  tms: true,
                  urlTemplate: "assets/k1_tms/Mapnik3/{z}/{x}/{y}.png",
                ),
                //desenha os polygonos e destaca o(s) selecionado(s)
                PolygonLayer(
                  polygons: [infraSectorPredioHistorico.polygon] +
                      lstInfraSector
                          .map((InfraSector e) => e.polygon)
                          .toList() +
                      lstSector.map((Sector e) => e.polygon).toList(),
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
                  polylines:
                      routeBetweenTwoPoints(sector.id, currentSelectedValue.id),
                ),
                //desenhas as portas/entradas dos polygons
                PolylineLayer(
                  polylines: infraSectorPredioHistorico.entries +
                      lstSector.expand((element) => element.entries).toList() +
                      lstInfraSector
                          .expand((InfraSector e) => e.entries)
                          .toList(),
                ),
                MarkerLayer(
                  markers: markers(),
                ),
                StreamBuilder(
                  stream: pdrStream(),
                  builder: (context, snapshot) {
                    List splitted = ["0", "0"];
                    if (snapshot.hasData) {
                      splitted = snapshot.data.toString().split(',');
                    }
                    return MarkerLayer(
                      markers: [
                        Marker(
                          width: 50,
                          height: 50,
                          anchorPos: AnchorPos.align(AnchorAlign.top),
                          point: LatLng(
                            double.parse(splitted[0]),
                            double.parse(splitted[1]),
                          ),
                          builder: (ctx) => const Icon(
                            Icons.location_on,
                            color: Colors.black87,
                            size: 50,
                          ),
                        ),
                      ],
                    );
                  },
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
                Text(
                  "©2022 - Universidade Federal do Paraná",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
