import 'package:json_annotation/json_annotation.dart';
import 'package:klinik/core/models/general/general_resp.dart';
import 'package:klinik/core/models/dokter/dokter.dart';

part 'all_dokter_resp.g.dart';

@JsonSerializable()
class AllDokterResp extends GeneralResp{
List<Dokter> data;

AllDokterResp({String success, String pesan, this.data}):super();

factory AllDokterResp.fromJson(Map<String, dynamic> json) => _$AllDokterRespFromJson(json);
Map<String, dynamic> toJson() => _$AllDokterRespToJson(this);
}