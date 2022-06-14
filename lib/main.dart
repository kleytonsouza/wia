import 'package:flutter/material.dart';
import 'location_map.dart';

//import 'location_map.dart';

// import 'location_map.dart';
  void main() {
    runApp(MaterialApp(
      title: "WIA",
      home: MyApp()
    ));
  }

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ufpr_extc.png'),
                    fit: BoxFit.fill)),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  elevation: 0,
                  title: const Text("WIA"),
                  centerTitle: true,
                  backgroundColor: Colors.black,
                  leading: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.list, color: Colors.white)),
                ),
                body: Column(children: [
                  Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  alignment: Alignment.bottomCenter,
                                  image: AssetImage('assets/map_mask.png'))))),
                  Container(
                      margin: const EdgeInsets.only(top: 40),
                      //height: 120,
                      child: TextButton.icon(
                          onPressed: () { 
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => HomePage(title: "Mapa teste")
                              )
                            );
                          },
                          icon: Image.asset('assets/qr_localseguro.png'),
                          label: Text(""))),
                  Column(children: const [
                    TextButton(
                        onPressed: null,
                        child: Text("Ler QR Code",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white))),
                  ]),
                  Container(
                      margin: const EdgeInsets.only(top: 30),
                      //height: 20,
                      child: Text("©2021 - Universidade Federal do Paraná",
                          style: TextStyle(color: Colors.white)))
                ]),
                drawer: Drawer(
                    child: ListView(children: [
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Login"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Compartilhar"),
                    onTap: () {},
                  )
                ])))));
  }
}
