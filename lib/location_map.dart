import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

//-25.39954147933631, -49.250469280756825
class _HomePageState extends State<HomePage> {
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
  

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Você esta aqui."),
      ),
      body: Column(
        
        children: [
          Row(
            children: [
              Expanded( child:
                //color: Colors.cyan,
                DropdownButton(
                  dropdownColor: const Color.fromRGBO(176, 224, 247, 0.973),
                  style: const TextStyle(
                    fontSize: 10.5,
                    color: Colors.black,
                    fontFamily: "verdana_regular",
                  ),
                  hint: const Text(' Please choose a location',
                    style: TextStyle(
                      color: Colors.black,
                      //fontSize: 16,
                      fontFamily: "verdana_regular",
                    )
                  ),
                  value: currentSelectedValue,
                  isDense: true,
                  onChanged: (newValue) {
                    setState(() {
                      currentSelectedValue = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      value: location,
                      child: Text(location),
                    );
                  }).toList(),
                )
              )
            ]
          ),
          Expanded(
            //height: 560,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(-25.42901, -49.26744),
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
                      builder: (ctx) => const Icon(Icons.pin_drop, color: Colors.red),
                    ),
                  ],
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
              ]
            )
          )
        ]
      )
    );
  }
}
