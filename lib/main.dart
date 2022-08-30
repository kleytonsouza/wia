import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

main() => runApp(const WIA());

class WIA extends StatelessWidget {
  const WIA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Wia",
        home: Scaffold(
          body: Stack(
            children: [
              FlutterMap(
                options: MapOptions(
                  //                    center: LatLng(25.4289, -49.2673),
                  center: LatLng(25.4289, -49.2673),
                  //maxZoom: 18,
                  minZoom: 19,
                  maxZoom: 22,
                  //swPanBoundary: LatLng(25.4288, -49.268),
                  //nePanBoundary: LatLng(25.4289, -49.266),
                  zoom: 20,
                  //maxZoom: 20,
                  //minZoom: 18,
                ),
                layers: [
                  TileLayerOptions(
                    tileProvider: AssetTileProvider(),
                    fastReplace: true,
                    //retinaMode: true,
                    //tileSize: 256,
                    maxNativeZoom: 21,
                    maxZoom: 21,
                    
                    //overrideTilesWhenUrlChanges: true,
                    //x=coluna, y=linha, z=zoom
                    urlTemplate: "mapIndoor/Mapnik/{z}/{x}/{y}.jpg",
                    //subdomains: ['a', 'b', 'c']
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
