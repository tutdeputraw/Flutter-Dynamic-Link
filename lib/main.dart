import 'package:flutter/material.dart';
import 'package:flutter_dynamic_link/pages/_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePageView(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: '/:id',
          page: () => const DetailPageView(),
          transition: Transition.cupertino,
        ),
      ],
    );
  }
}

// class MyApp extends StatelessWidget {
//   Future<void> initDynamicLinks() async {
//     FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
//       print('GETLINK');
//       Get.to(() => const DetailPageView());
//     }).onError((error) {
//       print('onLink error');
//       print(error.message);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       getPages: [
//         GetPage(
//           name: '/',
//           page: () => const HomePageView(),
//           transition: Transition.cupertino,
//         ),
//         GetPage(
//           name: '/:id',
//           page: () => const DetailPageView(),
//           transition: Transition.cupertino,
//         ),
//       ],
//     );
//   }
// }
