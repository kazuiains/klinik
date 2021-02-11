// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_dokter_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllDokterResp _$AllDokterRespFromJson(Map<String, dynamic> json) {
  return AllDokterResp(
    success: json['success'],
    pesan: json['pesan'] as String,
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Dokter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllDokterRespToJson(AllDokterResp instance) =>
    <String, dynamic>{
      'success': instance.success,
      'pesan': instance.pesan,
      'data': instance.data,
    };
