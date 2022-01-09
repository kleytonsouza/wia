import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Você esta aqui."),
        ),
        body: Container(
            child: Center(
          child: FlutterMap(
            options: MapOptions(
              center: LatLng(-25.42901, -49.26744),
              zoom: 19,
            ),
            layers: [
              TileLayerOptions(
                  maxZoom: 22,
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                  attributionBuilder: (_) {
                  return Text("");
                   },
                  ),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    point: LatLng(-25.42901, -49.26744),
                    builder: (ctx) => Icon(Icons.pin_drop, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
