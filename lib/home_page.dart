//Widget build(BuildContext context) {
//  return FlutterMap(
//    options: MapOptions(
//      center: LatLng(51.5, -0.09),
//      zoom: 13.0,
//    ),
//    layers: [
//      TileLayerOptions(
//        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
//        subdomains: ['a', 'b', 'c'],
//        attributionBuilder: (_) {
//          return Text("© OpenStreetMap contributors");
//        },
//      ),
//      MarkerLayerOptions(
//        markers: [
//          Marker(
//            width: 80.0,
//            height: 80.0,
//            point: LatLng(51.5, -0.09),
//            builder: (ctx) =>
//            Container(
//              child: FlutterLogo(),
//            ),
//          ),
//        ],
//      ),
//    ],
//  );
//}