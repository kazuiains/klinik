import 'package:json_annotation/json_annotation.dart';
import 'package:klinik/core/models/general/general_resp.dart';
import 'package:klinik/core/models/dokter/dokter.dart';

part 'get_dokter_resp.g.dart';

@JsonSerializable()
class GetDokterResp extends GeneralResp {
  Dokter dokter;

  GetDokterResp({var success, String pesan, this.dokter}) : super(pesan: pesan, success: success);

  factory GetDokterResp.fromJson(Map<String, dynamic> json) => _$GetDokterRespFromJson(json);

  Map<String, dynamic> toJson() => _$GetDokterRespToJson(this);
}
