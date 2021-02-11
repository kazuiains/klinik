import 'package:flutter/material.dart';
import 'package:klinik/config/route_config.dart';
import 'package:klinik/core/blocs/dokter/all_dokter_bloc.dart';
import 'package:klinik/core/helpers/debug_utils.dart';
import 'package:klinik/core/models/dokter/all_dokter_resp.dart';

class ListDokterPertamaScreen extends StatefulWidget {
  @override
  _ListDokterPertamaScreenState createState() =>
      _ListDokterPertamaScreenState();
}

class _ListDokterPertamaScreenState extends State<ListDokterPertamaScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  AllDokterBloc _bloc;

  @override
  void initState() {
    _bloc = AllDokterBloc();
    _bloc.listDokter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Klinik"),
      ),
      body: Container(
        child: StreamBuilder<AllDokterResp>(
          stream: _bloc.dokterStream,
          builder: (context, snapshot) {
            logD("view log: $snapshot");
            if (snapshot.hasData && snapshot.data.data != null) {
              return ListView.builder(
                itemCount: snapshot.data.data?.length,
                itemBuilder: (context, index) {

                  var data = snapshot.data.data[index];

                  return InkWell(
                    onTap: () => RouteConfig.route.navigateTo(
                        context, RouteConfig.listDokter2,
                        replace: true),
                    child: Stack(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [

                              SizedBox(
                                width: 30,
                              ),

                              Expanded(
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                                    child: ListTile(
                                      title: Text(data.nama),
                                      subtitle: Text(data.poli),
                                    ),
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),



                      ],
                    ),
                  );
                },
              );
            } else {

              return Center(
                child: CircularProgressIndicator(),
              );

            }
          },
        ),
      ),
    );
  }
}
