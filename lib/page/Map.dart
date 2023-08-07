import 'dart:async';

import 'package:App/page/sign%20in.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show Polyline, PolylineId, LatLng;

import '../futurn/displayBottomsheet.dart';
import 'setting_page.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  late LocationData _currentLocation;
  Set<Marker> _markers = {}; // Updated line
  Set<Polyline> _polylines = {};

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(17.939372, 102.626805),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    _getUserCurrentLocation();
  }

  Future<void> _getUserCurrentLocation() async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _currentLocation = await location.getLocation();
    setState(() {});
  }

  //marker
  @override
  Widget build(BuildContext context) {
    final Marker _kGooglePlexMarker1 = Marker(
        markerId: MarkerId('_KGooglePlex'),
        infoWindow: InfoWindow(title: 'EV ຄ ວ ສ'),
        icon: BitmapDescriptor.defaultMarker,
        position: LatLng(17.939372, 102.626805),
        onTap: () {
          showModalBottomSheet(
              context: context,
              backgroundColor: Colors.white,
              barrierColor: Colors.black87.withOpacity(0.5),
              isDismissible: false,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              builder: (context) {
                return displayBottomsheet();
              });
        });
    final Marker _kGooglePlexMarker2 = Marker(
        markerId: MarkerId('_KGooglePlex'),
        infoWindow: InfoWindow(title: 'EV ໄຟຟ້າລາວ'),
        icon: BitmapDescriptor.defaultMarker,
        position: LatLng(17.9409816, 102.6274970),
        onTap: () {
          showModalBottomSheet(
              context: context,
              backgroundColor: Colors.white,
              barrierColor: Colors.black87.withOpacity(0.5),
              isDismissible: false,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              builder: (context) {
                return displayBottomsheet();
              });
        });
    final Marker _KGooglePlexMarker3 = Marker(
        markerId: MarkerId('_KGooglePlex'),
        infoWindow: InfoWindow(title: 'EV'),
        icon: BitmapDescriptor.defaultMarker,
        position: LatLng(17.9644764, 102.6342550),
        onTap: () {
          showModalBottomSheet(
              context: context,
              backgroundColor: Colors.white,
              barrierColor: Colors.black87.withOpacity(0.5),
              isDismissible: false,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              builder: (context) {
                return displayBottomsheet();
              });
        });
    Widget _buildLogoutButton() {
      return IconButton(
        icon: Icon(Icons.logout),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          );
        },
      );
    }

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff5ac18e).withOpacity(0.3),
      //   title: Text(''), // title for bar
      //   actions: <Widget>[
      //     PopupMenuItem(
      //       child: InkWell(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => Setting(),
      //             ),
      //           );
      //         },
      //         child: Row(
      //           children: [
      //             Icon(
      //               Icons.settings,
      //               color: Colors.white,
      //             ),
      //             SizedBox(width: 10),
      //             // Text('Setting'),
      //           ],
      //         ),
      //       ),
      //     ),
      //     // PopupMenuButton(
      //     //   itemBuilder: (BuildContext context) => [

      //     // PopupMenuItem(
      //     //   child: InkWell(
      //     //     onTap: () {
      //     //       Navigator.push(
      //     //         context,
      //     //         MaterialPageRoute(
      //     //           builder: (context) => Login(),
      //     //         ),
      //     //       );
      //     //     },
      //     //     child: Row(
      //     //       children: [
      //     //         Icon(
      //     //           Icons.logout,
      //     //           color: Color(0xff5ac18e),
      //     //         ),
      //     //         SizedBox(width: 10),
      //     //         Text('Log Out'),
      //     //       ],
      //     //     ),
      //     //   ),
      //     // ),
      //     //   ],
      //     // ),
      //   ],
      // ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.hybrid,
            markers: _markers.union({
              // _getUserLocationMarker(),
              _KGooglePlexMarker3,
              _kGooglePlexMarker2,
              _kGooglePlexMarker1
            }),
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ],
      ),
    );
  }
}
