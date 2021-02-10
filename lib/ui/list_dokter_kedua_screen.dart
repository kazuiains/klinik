import 'package:flutter/material.dart';
import 'package:klinik/core/blocs/dokter/all_dokter_bloc.dart';
import 'package:provider/provider.dart';

class ListDokterKeduaScreen extends StatefulWidget {
  @override
  _ListDokterKeduaScreenState createState() => _ListDokterKeduaScreenState();
}

class _ListDokterKeduaScreenState extends State<ListDokterKeduaScreen>
    with AutomaticKeepAliveClientMixin {

  AllDokterBloc _bloc;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
     _bloc = Provider.of<AllDokterBloc>(context, listen: false);
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
  }
}
