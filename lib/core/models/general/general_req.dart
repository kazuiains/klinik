import 'package:json_annotation/json_annotation.dart';

part 'general_req.g.dart';
@JsonSerializable(createFactory: false)
class GeneralReq {
  String aksi;

  GeneralReq({this.aksi});

  Map<String, dynamic> toJson() => _$GeneralReqToJson(this);
}
