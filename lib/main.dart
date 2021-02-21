import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state/controller.dart';
import 'package:getx_state/routes.dart';
import 'package:getx_state/routesName.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      home: Scaffold(
        body: Container(
          width: 500,
          child: MixinBuilder<Controller>(
            init: Controller(),
            builder: (v) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${v.one + v.two.value}'),
                RaisedButton(onPressed: () {
                  v.incrementOne();
                },child: Text("+"),),
                RaisedButton(onPressed: () {
                  Get.toNamed(Routes.HOME);
                },child: Text("Next"),)
              ],
            ),
          ),
        ),
      ),
    ); // instead of MaterialApp
  }
}
