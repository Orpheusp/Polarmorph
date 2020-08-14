import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BusinessSiteMap extends StatelessWidget {
  final String _site;
  final LatLng _location;

  BusinessSiteMap(this._site, this._location, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final marker = Marker(
      markerId: MarkerId(this._site),
      position: this._location,
      infoWindow: InfoWindow(title: 'Polarmorph Coffee & Art'),
    );
    final map = GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: this._location,
        zoom: 16,
      ),
      mapToolbarEnabled: false,
      rotateGesturesEnabled: false,
      scrollGesturesEnabled: false,
      tiltGesturesEnabled: false,
      myLocationButtonEnabled: false,
      markers: Set.from([marker]),
    );

    return Container(
      height: 200,
      alignment: AlignmentDirectional(0.0, 0.0),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: map,
    );
  }
}
