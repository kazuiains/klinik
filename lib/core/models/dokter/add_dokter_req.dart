
import 'package:json_annotation/json_annotation.dart';
import 'package:klinik/core/models/general/general_req.dart';
import 'package:klinik/core/models/dokter/dokter.dart';
part 'add_dokter_req.g.dart';

@JsonSerializable(createFactory: false)
class AddDokterReq extends GeneralReq{

  Dokter dokter;

  AddDokterReq({String aksi, this.dokter}):super(aksi: aksi);

  Map<String, dynamic> toJson() => _$AddDokterReqToJson(this);
}