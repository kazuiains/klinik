import 'package:klinik/core/blocs/base_bloc.dart';
import 'package:klinik/core/models/dokter/all_dokter_resp.dart';
import 'package:klinik/core/models/general/general_resp.dart';
import 'package:klinik/core/models/general/general_req.dart';
import 'package:klinik/core/service/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:klinik/core/constants/endpoint.dart';

class AllDokterBloc extends BaseBloc {
  final _repo = Repository();

  AllDokterResp respDokter;
  final _dokterSubject = BehaviorSubject<AllDokterResp>();
  Function(AllDokterResp) get dokterSink => _dokterSubject.sink.add;
  Stream<AllDokterResp> get dokterStream => _dokterSubject.stream;

  Future listDokter(
      {Function(GeneralResp respSuccess) onSuccess,
      Function(GeneralResp respFailed) onFailed}) async {
    setBusy();

    final request = GeneralReq(aksi: allDokter);
    respDokter = await _repo.allDokter(request: request);

    if (respDokter.success == "1") {
      if (onSuccess != null) onSuccess(respDokter);
      dokterSink(respDokter);
    } else {
      if (onFailed != null) onFailed(respDokter);
      dokterSink(respDokter);
    }

    setIdle();
  }

  @override
  void dispose() {
    super.dispose();
    _dokterSubject.close();
  }
}
