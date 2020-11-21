// To parse this JSON data, do
//
//     final barangModel = barangModelFromJson(jsonString);
part of 'model.dart';

List<BarangModel> barangModelFromJson(String str) => List<BarangModel>.from(json.decode(str).map((x) => BarangModel.fromJson(x)));

String barangModelToJson(List<BarangModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BarangModel {
  BarangModel({
    this.id,
    this.idBarang,
    this.nameBarang,
    this.createdAt,
    this.updatedAt,
  });

  String id;
  String idBarang;
  String nameBarang;
  DateTime createdAt;
  DateTime updatedAt;

  factory BarangModel.fromJson(Map<String, dynamic> json) => BarangModel(
    id: json["id"],
    idBarang: json["id_barang"],
    nameBarang: json["name_barang"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "id_barang": idBarang,
    "name_barang": nameBarang,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
