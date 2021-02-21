import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MixinBuilder<Controller>(
          init: Controller(),
          builder: (v) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${v.two.value}'),
              RaisedButton(
                onPressed: () {
                  v.incrementTwo();
                },
                child: Text("+"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
