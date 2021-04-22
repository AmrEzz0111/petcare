import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pet_care/models/doctor_model.dart';

// ignore: must_be_immutable
class GoogleMapWidget extends StatelessWidget {
  GoogleMapWidget(this.doctor);
  final Doctor doctor;

  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(doctor.locationDr.lat, doctor.locationDr.long),
      zoom: 14.4746,
    );
    var myMarker = Marker(
        markerId: MarkerId("1"),
        position: LatLng(0, 0),
        visible: true,
        infoWindow: InfoWindow(
            title: "${doctor.firstName}", snippet: "${doctor.specialist}"));
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
      scrollGesturesEnabled: true,
      markers: Set.of(
        [myMarker],
      ),
    );
  }
}
