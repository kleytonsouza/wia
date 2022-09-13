import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:wia/data/sector_data.dart';

import '../models/sector.dart';

class PointsBetweenRoutes {
  // final LatLng sectorOrigin;
  // final LatLng sectorDestination;
  // final List<Polyline> _points = [];

  // PointsBetweenRoutes({required this.sectorOrigin, required this.sectorDestination});

  static List<Polyline> get pointsSectorSevenToFive {
    Sector pointNine = locations[9];
    Sector pointTen = locations[10];
    Sector pointEleven = locations[11];
    Sector pointTwelve = locations[12];

    List<Polyline> pointsSectorSevenToFive = [];

    pointsSectorSevenToFive.add(Polyline(
      strokeWidth: 2.0,
      color: Colors.red,
      points: [
        LatLng(
          double.parse(pointNine.coordinate[0]),
          double.parse(
            pointNine.coordinate[0],
          ),
        ),
        LatLng(
          double.parse(pointTen.coordinate[0]),
          double.parse(
            pointTen.coordinate[0],
          ),
        ),
        LatLng(
          double.parse(pointEleven.coordinate[0]),
          double.parse(
            pointEleven.coordinate[0],
          ),
        ),
        LatLng(
          double.parse(pointTwelve.coordinate[0]),
          double.parse(
            pointTwelve.coordinate[0],
          ),
        ),
      ],
    ));

    return pointsSectorSevenToFive;
  }
}
