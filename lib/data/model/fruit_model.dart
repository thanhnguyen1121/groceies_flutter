import 'package:json_annotation/json_annotation.dart';
part 'fruit_model.g.dart';

@JsonSerializable()
class FruitModel {
  String url;
  String name;
  String shortDetail;
  String price;
  String longDetail;
  bool isFavorite;


  FruitModel(this.url, this.name, this.shortDetail, this.price, this.longDetail,
      this.isFavorite);

  factory FruitModel.fromJson(Map<String, dynamic> json) => _$FruitModelFromJson(json);

  Map<String, dynamic> toJson() => _$FruitModelToJson(this);
}
