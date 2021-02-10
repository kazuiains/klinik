import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klinik/config/route_config.dart';
import 'package:klinik/core/blocs/dokter/all_dokter_bloc.dart';
import 'package:klinik/core/blocs/dokter/detail_dokter_bloc.dart';
import 'package:provider/provider.dart';

class KlinikApp extends StatefulWidget {
  @override
  _KlinikAppState createState() => _KlinikAppState();
}

class _KlinikAppState extends State<KlinikApp> {
  _KlinikAppState() {
    final route = FluroRouter();
    RouteConfig.config(route);
    RouteConfig.route = route;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AllDokterBloc>(
          create: (_) => AllDokterBloc(),
        ),
        ChangeNotifierProvider<DetailDokterBloc>(
          create: (_) => DetailDokterBloc(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: RouteConfig.navigatorKey,
        onGenerateRoute: RouteConfig.route.generator,
        title: "Klinik",
        debugShowCheckedModeBanner: false,
        // theme: AppTheme.light(context),
      ),
    );
  }
}
