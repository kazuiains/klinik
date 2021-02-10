import 'package:flutter/material.dart';
import 'package:klinik/core/blocs/dokter/detail_dokter_bloc.dart';

class DetailDokterScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailDokterScreen>
    with AutomaticKeepAliveClientMixin {
  DetailDokterBloc _bloc;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _bloc = DetailDokterBloc();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
  }
}
