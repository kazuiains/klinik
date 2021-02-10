import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:klinik/config/route_config.dart';

import 'SplashScreen.dart';

class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _InitSetup(context);
    });
  }

  void _InitSetup(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 1500));
    RouteConfig.route.navigateTo(context, RouteConfig.listDokter1, replace: true);
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
