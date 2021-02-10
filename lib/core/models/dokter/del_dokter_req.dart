import 'package:json_annotation/json_annotation.dart';
import 'package:klinik/core/models/general/general_req.dart';
part 'del_dokter_req.g.dart';
@JsonSerializable(createFactory: false)
class DelDokterReq extends GeneralReq{

  String id_dokter;

  DelDokterReq({String aksi, this.id_dokter}):super(aksi: aksi);

  Map<String, dynamic> toJson() => _$DelDokterReqToJson(this);
}