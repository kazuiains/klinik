import 'package:klinik/core/blocs/base_bloc.dart';
import 'package:klinik/core/constants/endpoint.dart';
import 'package:klinik/core/models/dokter/add_dokter_req.dart';
import 'package:klinik/core/models/dokter/del_dokter_req.dart';
import 'package:klinik/core/models/dokter/dokter.dart';
import 'package:klinik/core/models/dokter/get_dokter_resp.dart';
import 'package:klinik/core/models/general/general_resp.dart';
import 'package:klinik/core/service/repository.dart';
import 'package:rxdart/rxdart.dart';

class DetailDokterBloc extends BaseBloc {
  final _repo = Repository();

  GetDokterResp detailDokterResp;
  final _getDetailDokterSubject = BehaviorSubject<GetDokterResp>();
  Function(GetDokterResp) get getDokterSink => _getDetailDokterSubject.sink.add;
  Stream<GetDokterResp> get getDokterStream => _getDetailDokterSubject.stream;

  Future deleterDokter(
      {String idDokter,
      Function(GeneralResp respSuccess) onSuccess,
      Function(GeneralResp respFailed) onFailure}) async {
    setBusy();

    final request = DelDokterReq(id_dokter: idDokter, aksi: delDokter);
    final response = await _repo.delDokter(request: request);

    if (response.success == "1") {
      if (onSuccess != null) onSuccess(response);
    } else {
      if (onFailure != null) onFailure(response);
    }

    setIdle();
  }

  Future detailDokter({
    String idDokter,
    Function(GetDokterResp respSuccess) onSuccess,
    Function(GetDokterResp respFailed) onFailure,
  }) async {
    setBusy();

    final uid = Dokter(id_dokter: idDokter);
    final request = AddDokterReq(aksi: detDokter, dokter: uid);

    detailDokterResp = await _repo.getDokter(request: request);

    if (detailDokterResp.success == "1") {
      if (onSuccess != null) onSuccess(detailDokterResp);
      getDokterSink(detailDokterResp);
    } else {
      if (onFailure != null) onFailure(detailDokterResp);
    }

    setIdle();
  }

  @override
  void dispose() {
    super.dispose();
    _getDetailDokterSubject.close();
  }
}
