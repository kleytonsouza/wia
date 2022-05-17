import 'package:flutter/material.dart';
//import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scanner extends StatefulWidget {
  @override
  _ScannerState createState() => _ScannerState();
}

class QRViewController {
  get scannedDataStream => null;

  void dispose() {}
  
  void pauseCamera() {}
  
  void resumeCamera() {}
}

class _ScannerState extends State<Scanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void _onQRViewCreated(QRViewController controller) {
      this.controller = controller;
      controller.scannedDataStream.listen((scanData) async {
        controller.pauseCamera();
        controller.resumeCamera();
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Você esta aqui."),
        ),
        body: Center(
          child: Column(
            children: [Container(), const Center(child: Text("asçdlkf"))],
          ),
        ));
  }
}
