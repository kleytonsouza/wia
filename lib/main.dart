import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:plugin_pdr/plugin_pdr.dart';
import 'package:wia/views/location_map.dart';

import 'package:wia/data/lst_sector_data.dart';

import 'models/sector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MaterialApp(title: "WIA", home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<void> scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);

      Sector sector = lstSector.firstWhere(
        // (location) => location.coordinate[0] == barcodeScanRes.split(",")[0],
        (location) => location.name == barcodeScanRes,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyLocation(
            sector: sector,
          ),
        ),
      );
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ufpr_extc.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            title: const Text("WIA"),
            centerTitle: true,
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: null,
              icon: Icon(Icons.list, color: Colors.white),
            ),
          ),
          body: Column(children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage('assets/map_mask.png'),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              //height: 120,
              child: TextButton.icon(
                icon: Image.asset('assets/qr_wia.png'),
                label: Text(""),
                //onPressed: () => scanQR(),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyLocation(
                      sector: lstSector.firstWhere((element) => element.id == 7),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: const [
                TextButton(
                    onPressed: null,
                    child: Text("Ler QR Code",
                        style: TextStyle(fontSize: 25, color: Colors.white))),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 30),
                //height: 20,
                child: const Text("©2021 - Universidade Federal do Paraná",
                    style: TextStyle(color: Colors.white)))
          ]),
          drawer: Drawer(

            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Login"),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Compartilhar"),
                  onTap: null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
