import 'package:dijkstra/dijkstra.dart';

class RouteFromTo {
  final int idFrom;
  final int idTo;

  RouteFromTo({required this.idFrom, required this.idTo});

  List get listPoints => Dijkstra.findPathFromGraph(graph, idFrom, idTo);

  Map get graph => _graph;

  final Map _graph = {
    1: {2: 1},
    2: {21: 1},
    3: {15: 1},
    4: {14: 2},
    5: {13: 3},
    6: {24: 1},
    7: {9: 4},
    8: {22: 2},
    9: {10: 3, 18: 4},
    10: {9: 3, 11: 1},
    11: {10: 1, 12: 3},
    12: {13: 1, 14: 2},
    13: {12: 1, 16: 1},
    14: {12: 2, 4: 2, 15: 2},
    15: {3: 1, 16: 2, 3: 1},
    16: {13: 1, 15: 2},
    17: {20: 2, 25: 2},
    18: {9: 4, 25: 1},
    19: {20: 2, 25: 2, 21: 2},
    20: {1: 1, 17: 2, 19: 2, 23: 2},
    21: {2: 1, 22: 1, 19: 2},
    22: {8: 2, 21: 1, 23: 1},
    23: {20: 2, 22: 1, 24: 2},
    24: {6: 1, 23: 2},
    25: {17: 2, 18: 1, 19: 2},
  };

  // static List<Polyline> get pointsSectorSevenToFive {
  //   JoinPoint pointNine = joinPointsLocations[9];
  //   JoinPoint pointTen = joinPointsLocations[10];
  //   JoinPoint pointEleven = joinPointsLocations[11];
  //   JoinPoint pointTwelve = joinPointsLocations[12];

  //   List<Polyline> pointsSectorSevenToFive = [];

  //   pointsSectorSevenToFive.add(Polyline(
  //     strokeWidth: 2.0,
  //     color: Colors.red,
  //     points: [
  //       LatLng(
  //         double.parse(pointNine.coordinate[0]),
  //         double.parse(
  //           pointNine.coordinate[0],
  //         ),
  //       ),
  //       LatLng(
  //         double.parse(pointTen.coordinate[0]),
  //         double.parse(
  //           pointTen.coordinate[0],
  //         ),
  //       ),
  //       LatLng(
  //         double.parse(pointEleven.coordinate[0]),
  //         double.parse(
  //           pointEleven.coordinate[0],
  //         ),
  //       ),
  //       LatLng(
  //         double.parse(pointTwelve.coordinate[0]),
  //         double.parse(
  //           pointTwelve.coordinate[0],
  //         ),
  //       ),
  //     ],
  //   ));

  //   return pointsSectorSevenToFive;
  // }
}