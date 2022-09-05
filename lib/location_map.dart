import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Location extends StatefulWidget {
  Location({Key? key, required this.title, required this.loc})
      : super(key: key);

  final String title;
  List<String> loc;

  @override
  _Location createState() => _Location();
}

//-25.39954147933631, -49.250469280756825
class _Location extends State<Location> {
  final MapController _controller = MapController();

  final List<String> _locations = [
    '1 Gabinete - Financeiro',
    '2 Gabinete - Secretaria',
    '3 COPEG',
    '4 COPAC',
    '5 COPAP - Seção de Acompanhamento Acadêmico (SAAC)',
    '6 COPAP - Seção de Gerenciamento Acadêmico (SGA)',
    '7 COPAP - Unidade de Diplomas (UD)',
    '8 COPAP - Seção de Ocupação de Vaga (SOCV)',
    '9 COAFE - Unidade de Estágios (UE)',
    '10 COAFE - Unidades de Atividades Formativas (UAF)',
    '11 COSIS - Coord de Sistemas de Informação para a Gestão Acadêmica',
    '12 CIPEAD - Unidade Administrativa',
    '13 CIPEAD - Unidade Pedagógica',
    '14 CIPEAD - LabCIPEAD',
    '15 CIPEAD - Equipe Multidisciplinar'
  ];
  var currentSelectedValue;

  //get loc => _locations;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("teste");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Você esta aqui."),
        ),
        body: Column(children: [
          Row(children: [
            Expanded(
                child: DropdownButton(
              dropdownColor: const Color.fromRGBO(176, 224, 247, 0.973),
              style: const TextStyle(
                fontSize: 10.5,
                color: Colors.black,
                fontFamily: "verdana_regular",
              ),
              hint: Text(_locations[1],
                  style: TextStyle(
                    color: Colors.black,
                    //fontSize: 16,
                    fontFamily: "verdana_regular",
                  )),
              value: currentSelectedValue,
              isDense: true,
              onChanged: (newValue) {
                setState(() {
                  currentSelectedValue = newValue;
                });
              },
              items: _locations.map((location1) {
                return DropdownMenuItem(
                  value: location1,
                  child: Text(location1),
                );
              }).toList(),
            ))
          ]),
          Expanded(
            //height: 560,
            child: FlutterMap(
              mapController: _controller,
              options: MapOptions(
                //crs: Epsg4326(),
                center: LatLng(-25.429096, -49.267650),
                //maxZoom: 18,
                minZoom: 18,
                maxZoom: 22,
                //nePanBoundary: LatLng(25.4286, -49.2672),
                //swPanBoundary: LatLng(25.4295, -49.2680),
                //zoom: 20,
                //maxZoom: 20,
                //minZoom: 18,
              ),
              layers: [
                TileLayerOptions(
                  tileProvider: AssetTileProvider(),
                  //fastReplace: true,
                  //retinaMode: true,
                  //tileSize: 512,
                  maxNativeZoom: 22,
                  maxZoom: 22,
                  tms: true,
                  //zoomOffset: 1.0,
                  //overrideTilesWhenUrlChanges: true,
                  //x=coluna, y=linha, z=zoom
                  //userAgentPackageName: 'com.example.app',
                  urlTemplate: "k1_tms/Mapnik/{z}/{x}/{y}.png",
                  //subdomains: ['a', 'b', 'c']
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      point: LatLng(-25.42949615561416, -49.26768522124001),
                      builder: (ctx) =>
                          const Icon(Icons.pin_drop, color: Colors.red),
                    ),
                  ],
                ),
              ],
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
        ]));
  }
}
