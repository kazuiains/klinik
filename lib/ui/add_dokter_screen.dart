import 'package:flutter/material.dart';
import 'package:klinik/core/blocs/dokter/add_dokter_bloc.dart';

class AddDokterScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddDokterScreen> {
  AddDokterBloc _bloc;

  @override
  void initState() {
    _bloc = AddDokterBloc();

  }

  @override
  Widget build(BuildContext context) {}
}
