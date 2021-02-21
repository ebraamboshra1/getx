import 'package:get/get.dart';
import 'package:getx_state/routesName.dart';

import 'home.dart';
import 'main.dart';


class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
        name: Routes.INITIAL,
        page: () => MyApp(),
        children: [

        ]),
    GetPage(
      name: Routes.HOME,
      page: () => Home(),
      transition: Transition.native
    ),
  ];
}