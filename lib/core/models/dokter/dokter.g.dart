// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dokter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dokter _$DokterFromJson(Map<String, dynamic> json) {
  return Dokter(
    nama: json['nama'] as String,
    no_ktp: json['no_ktp'] as String,
    alamat: json['alamat'] as String,
    no_telp: json['no_telp'] as String,
    poli: json['poli'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    id_dokter: json['id_dokter'] as String,
  );
}

Map<String, dynamic> _$DokterToJson(Dokter instance) => <String, dynamic>{
      'nama': instance.nama,
      'no_ktp': instance.no_ktp,
      'alamat': instance.alamat,
      'no_telp': instance.no_telp,
      'poli': instance.poli,
      'username': instance.username,
      'password': instance.password,
      'id_dokter': instance.id_dokter,
    };
