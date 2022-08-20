import 'package:hive_flutter/adapters.dart';
part 'db_model.g.dart';

@HiveType(typeId: 1)
class DBModel extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String subName;

  @HiveField(3)
  final String image;

  @HiveField(4)
  final String productName;

  @HiveField(5)
  final String productPrice;

  @HiveField(6)
  final String store;

  @HiveField(7)
  final String returnTime;
  @HiveField(8)
  final String address;
  DBModel({
    required this.name,
    required this.subName,
    required this.image,
    required this.productName,
    required this.productPrice,
    required this.store,
    required this.returnTime,
    required this.address,
  });
}
