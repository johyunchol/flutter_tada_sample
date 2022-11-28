import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:tada/src/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Home(),
      home: const HomeScreen(),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   late AnimationController animationController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
//     // animationController.forward(from: 0);
//     animationController.addStatusListener((status) {
//       debugPrint('***** [JHC_DEBUG] $status ');
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(),
//       body: Stack(
//         children: [
//           Container(height: 200, child: const NaverMap()),
//           ElevatedButton(
//               onPressed: () {
//                 _scaffoldKey.currentState?.showBottomSheet(
//                   (context2) {
//                     return BottomSheet(
//                       onClosing: () {},
//                       builder: (context) {
//                         return Container(
//                           height: 600,
//                           color: Colors.blueAccent,
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text('하단 시트'),
//                                 ElevatedButton(
//                                   child: Text('닫기'),
//                                   onPressed: () {
//                                     Navigator.pop(context2);
//                                   },
//                                 )
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                       enableDrag: true,
//                       onDragStart: ((details) {
//                         debugPrint('***** [JHC_DEBUG] start : $details');
//                       }),
//                       onDragEnd: ((details, {required isClosing}) {
//                         debugPrint('***** [JHC_DEBUG] ent : $details, $isClosing');
//                       }),
//                       animationController: animationController,
//                     );
//                   },
//                 );
//               },
//               child: Text('test')),
//         ],
//       ),
//     );
//   }
// }
