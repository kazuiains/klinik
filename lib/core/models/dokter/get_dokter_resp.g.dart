// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_dokter_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDokterResp _$GetDokterRespFromJson(Map<String, dynamic> json) {
  return GetDokterResp(
    success: json['success'],
    pesan: json['pesan'] as String,
    dokter: json['dokter'] == null
        ? null
        : Dokter.fromJson(json['dokter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetDokterRespToJson(GetDokterResp instance) =>
    <String, dynamic>{
      'success': instance.success,
      'pesan': instance.pesan,
      'dokter': instance.dokter,
    };
