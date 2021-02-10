import 'package:klinik/core/models/dokter/add_dokter_req.dart';
import 'package:klinik/core/models/dokter/all_dokter_resp.dart';
import 'package:klinik/core/models/dokter/del_dokter_req.dart';
import 'package:klinik/core/models/dokter/get_dokter_resp.dart';
import 'package:klinik/core/models/general/general_req.dart';
import 'package:klinik/core/models/general/general_resp.dart';
import 'package:klinik/core/service/api_service.dart';

class Repository {
  final _service = ApiService();

  //add dokter
  Future<GeneralResp> addDokter({AddDokterReq request}) async {
    final response = await _service.call(request: request.toJson());
    return GeneralResp.fromJson(response.data);
  }

  //delete dokter
  Future<GeneralResp> delDokter({DelDokterReq request}) async {
    final response = await _service.call(request: request.toJson());
    return GeneralResp.fromJson(response.data);
  }

  //detail dokter
  Future<GetDokterResp> getDokter({GeneralReq request}) async {
    final response = await _service.call(request: request.toJson());
    return GetDokterResp.fromJson(response.data);
  }

  //all dokter
  Future<AllDokterResp> allDokter({GeneralReq request}) async {
    final response = await _service.call(request: request.toJson());
    return AllDokterResp.fromJson(response.data);
  }
}
