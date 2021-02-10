import 'package:klinik/core/blocs/base_bloc.dart';
import 'package:klinik/core/service/repository.dart';
import 'package:klinik/core/models/general/general_resp.dart';
import 'package:klinik/core/models/general/general_req.dart';

class AddDokterBloc extends BaseBloc {
  final _repo = Repository();

  Future addDokter(
      {GeneralReq request,
      Function(GeneralResp respSuccess) onSuccess,
      Function(GeneralResp respFailed) onFailed}) async {
    setBusy();

    final response = await _repo.addDokter(request: request);

    if (response.success == "1") {
      if (onSuccess != null) onSuccess(response);
    } else {
      if (onFailed != null) onFailed(response);
    }
  }
}
