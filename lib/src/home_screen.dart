import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:tada/src/route.dart';
import 'package:tada/src/type_2.dart';
import 'package:tada/src/type_3.dart';
import 'package:tada/src/type_4.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 300;
  List<LatLng> coords = <LatLng>[];

  Set<PathOverlay> pathOverlays = {};
  List<Marker> markers = [];

  @override
  void initState() {

    var src = Marker(markerId: UniqueKey().toString(), position: LatLng(37.49795, 127.027637));
    var dest = Marker(markerId: UniqueKey().toString(), position: LatLng(37.551261444442886, 126.98821468278766));

    markers.add(src);
    markers.add(dest);

    var list = route["list"] as List;
    for (Map<String, double> item in list) {
      coords.add(LatLng(item["latitude"] as double, item["longitude"] as double));
    }

    PathOverlay pathOverlay = PathOverlay(
      PathOverlayId(UniqueKey().toString()),
      coords,
      color: Colors.blue,
      width: 5,
    );

    pathOverlays.add(pathOverlay);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height - 400;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  flexibleSpace: Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: NaverMap(
                              onMapCreated: ((controller) {
                                controller.moveCamera(CameraUpdate.fitBounds(LatLngBounds.fromLatLngList(coords), padding: 140));
                              }),
                              forceGesture: true,
                              pathOverlays: pathOverlays,
                              markers: markers,
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                      const Type2(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            width: 60,
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  expandedHeight: height,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      return Column(
                        children: const [
                          Type4(),
                        ],
                      );
                    },
                    childCount: 1,
                  ),
                )
              ],
            ),
          ),
          const Divider(height: 1),
          const Type3(),
        ],
      ),
    );
  }
}
