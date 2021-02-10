import 'package:json_annotation/json_annotation.dart';

part 'dokter.g.dart';

@JsonSerializable()
class Dokter {
  String nama;
  String no_ktp;
  String alamat;
  String no_telp;
  String poli;
  String username;
  String password;
  String id_dokter;

  Dokter(
      {this.nama,
      this.no_ktp,
      this.alamat,
      this.no_telp,
      this.poli,
      this.username,
      this.password,
      this.id_dokter});

  @override
  String toString() {
    return "Dokter{"
        "id_dokter: $id_dokter, nama: $nama, no_ktp: $no_ktp, no_telp: $no_telp, poli: $poli, username: $username, password: $password}";
  }

  factory Dokter.fromJson(Map<String, dynamic> json) => _$DokterFromJson(json);

  Map<String, dynamic> toJson() => _$DokterToJson(this);

}
