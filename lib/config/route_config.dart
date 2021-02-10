import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:klinik/config/route_handlers.dart';
import 'package:klinik/core/helpers/debug_utils.dart';

class RouteConfig {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static FluroRouter route;

  static const root = '/';
  static const listDokter1 = '/listDokter1';
  static const listDokter2 = '/listDokter2';
  static const detailDokter = '/detailDokter';
  static const addDokter = '/addDokter';

  static void config(FluroRouter router) {
    router.define(root, handler: rootHandler);
    router.define(listDokter1, handler: listDokter1Handler);
    router.define(listDokter2, handler: listDokter2Handler);
    router.define(detailDokter, handler: detailDokterHandler);
    router.define(addDokter, handler: addDokterHandler);

    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      logD("Route Not Found");
      return;
    });
  }
}
