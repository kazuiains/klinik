import 'package:json_annotation/json_annotation.dart';

part 'general_resp.g.dart';
@JsonSerializable()
class GeneralResp {
  var success;
  String pesan;

  GeneralResp({this.success, this.pesan});

  @override
  String toString() {
    return "GeneralResponse{success: $success, pesan: $pesan}";
  }

  factory GeneralResp.fromJson(Map<String, dynamic> json) => _$GeneralRespFromJson(json);

}
