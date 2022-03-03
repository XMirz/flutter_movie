import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_movie/core/values/theme.dart';

import 'app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: darkTheme,
    ),
  );
}

// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> with TickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     _controller = AnimationController(
//       duration: const Duration(seconds: 5),
//       vsync: this,
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Lottie.asset('assets/lottie/splash.json',
//             controller: _controller,
//             animate: true,
//             height: MediaQuery.of(context).size.height,
//             onLoaded: (composition) {
//           _controller
//             ..duration = composition.duration
//             ..forward().whenComplete(
//               () => Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => GetMaterialApp(
//                     debugShowCheckedModeBanner: false,
//                     title: "Application",
//                     initialRoute: AppPages.INITIAL,
//                     getPages: AppPages.routes,
//                     theme: darkTheme,
//                   ),
//                 ),
//               ),
//             );
//         }),
//       ),
//     );
//   }
// }
