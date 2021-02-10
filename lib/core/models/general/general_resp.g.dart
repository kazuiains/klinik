// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralResp _$GeneralRespFromJson(Map<String, dynamic> json) {
  return GeneralResp(
    success: json['success'] as String,
    pesan: json['pesan'] as String,
  );
}

Map<String, dynamic> _$GeneralRespToJson(GeneralResp instance) =>
    <String, dynamic>{
      'success': instance.success,
      'pesan': instance.pesan,
    };
