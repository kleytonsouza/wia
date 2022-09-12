import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:wia/models/sector.dart';
import 'package:wia/data/sector_data.dart';

class Location extends StatefulWidget {
  Location({Key? key, required this.sector}) : super(key: key);

  Sector sector;

  @override
  _Location createState() => _Location();
}

//-25.39954147933631, -49.250469280756825
class _Location extends State<Location> {
  //final MapController _controller = MapController();
  Sector currentSelectedValue = locations[0];
  
  bool setDestiny = false;
  
  List<Marker> markers() {
    if (setDestiny == true) {
      return [
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          width: 90,
          height: 90,
          point: LatLng(double.parse(sector.coordinate[0]),
              double.parse(sector.coordinate[1])),
          builder: (ctx) => const Icon(Icons.pin_drop, color: Colors.red),
        ),
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          width: 90,
          height: 90,
          point: LatLng(double.parse(currentSelectedValue.coordinate[0]),
              double.parse(currentSelectedValue.coordinate[1])),
          builder: (ctx) => const Icon(Icons.pin_drop, color: Colors.deepPurple, ),
        ),
      ];
    } else {
      return [
        Marker(
          //point: LatLng(-25.4288948, -49.2677837),
          point: LatLng(double.parse(sector.coordinate[0]),
              double.parse(sector.coordinate[1])),
          builder: (ctx) => const Icon(Icons.pin_drop, color: Colors.red),
        ),
      ];
    }
  }

  Sector get sector => widget.sector;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //List<String> qrSplitted = qrCodeLocation.coordinate.split(',');
    String nameSector = locations
        .firstWhere((element) => element.coordinate == sector.coordinate)
        .name;

    return Scaffold(
      appBar: AppBar(
        title: Text("Você esta na $nameSector"),
      ),
      body: Column(
        children: [
          Row(
            children: [
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
                  setState(() {
                    currentSelectedValue = newValue;
                    setDestiny = true;
                  });
                },
                items: locations.map((loc) {
                  return DropdownMenuItem(
                    value: loc,
                    child: Text(loc.name),
                  );
                }).toList(),
              )),
            ],
          ),
          Flexible(
            //height: 560,
            child: FlutterMap(
              //mapController: _controller,
              options: MapOptions(
                //crs: Epsg4326(),
                center: LatLng(-25.429096, -49.267650),
                //maxZoom: 18,
                minZoom: 18,
                maxZoom: 22,
                swPanBoundary: LatLng(-25.429230511601687, -49.268042791805925),
                nePanBoundary: LatLng(-25.42886227622278, -49.267256952072394),
                //-49.268042791805925,-25.429530511601687,-49.267256952072394,-25.42866227622278
                zoom: 19,
                //maxZoom: 20,
                //minZoom: 18,
              ),
              children: [
                TileLayer(
                  //evictErrorTileStrategy: EvictErrorTileStrategy.dispose,
                  tileProvider: AssetTileProvider(),
                  //fastReplace: true,
                  //maxNativeZoom: 22,
                  maxZoom: 22,
                  tms: true,
                  //zoomOffset: 1.0,
                  //overrideTilesWhenUrlChanges: true,
                  //x=coluna, y=linha, z=zoom
                  //userAgentPackageName: 'com.example.app',
                  urlTemplate: "assets/k1_tms/Mapnik/{z}/{x}/{y}.png",

                  //subdomains: ['a', 'b', 'c']
                ),
                MarkerLayer(
                  markers: markers(),
                ),
              ],
            ),
          ),
          /* FlutterMap(
              options: MapOptions(
                //center: LatLng(-25.42901, -49.26744),
                center: LatLng(loc[0], loc[1]),
                zoom: 19,
              ),
              layers: [
                TileLayerOptions(
                  maxZoom: 22,
                  urlTemplate:
                      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                  attributionBuilder: (_) {
                    return const Text("");
                  },
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      point: LatLng(-25.42901, -49.26744),
                      builder: (ctx) =>
                          const Icon(Icons.pin_drop, color: Colors.red),
                    ),
                  ],
                ),
              ],
            ), */
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
