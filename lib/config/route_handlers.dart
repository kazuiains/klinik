import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:klinik/ui/add_dokter_screen.dart';
import 'package:klinik/ui/detail_dokter_screen.dart';
import 'package:klinik/ui/init_screen.dart';
import 'package:klinik/ui/list_dokter_kedua_screen.dart';
import 'package:klinik/ui/list_dokter_pertama_screen.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return InitScreen();
});

var listDokter1Handler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ListDokterPertamaScreen();
});

var listDokter2Handler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ListDokterKeduaScreen();
});

var detailDokterHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return DetailDokterScreen();
});

var addDokterHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return AddDokterScreen();
});
