import 'package:flutter/material.dart';
import 'scan.dart';
import 'location_map.dart';

void main() {
  runApp(MaterialApp(
    title: "Locator",
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Locator",
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('ufpr_extc.png'), 
              fit: BoxFit.fill
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            title: const Text("Locator"),
            centerTitle: true,
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: null,
                icon: Icon(Icons.list, color: Colors.white)),
          ),
          body: Center(
            child: Column(
              children: [
              Container(
                  margin: const EdgeInsets.only(top: 210.0),
                  height: 189,
                  child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('map_mask.png'),
                          fit: BoxFit.fitHeight)
                      )
                  )
              ),
              Container(
                  margin: const EdgeInsets.only(top: 95.0),
                  height: 150,
                  child: TextButton.icon(
                      onPressed: () { 
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => HomePage(title: "Mapa teste",)
                          )
                        );
                      },
                      icon: Image.asset('qr_localseguro.png'),
                      label: Text(""))),
              Column(children: const [
                TextButton(
                    onPressed: null,
                    child: Text("Ler QR Code",
                        style:
                            TextStyle(fontSize: 25, color: Colors.white))),
              ]),
              Container(
                  margin: const EdgeInsets.only(top: 130.0),
                  height: 20,
                  child: Text("©2021 - Universidade Federal do Paraná",
                      style: TextStyle(color: Colors.white))
              )
            ])
          ),
          drawer: Drawer(
            child: ListView(
              children: [ 
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Login"),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Compartilhar"),
                  onTap: (){},
                )
                ]
            )
          )     
        )
      )
    );
  }

   
}
