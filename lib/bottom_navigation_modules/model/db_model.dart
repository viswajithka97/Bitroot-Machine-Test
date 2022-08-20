import 'package:hive_flutter/adapters.dart';
part 'db_model.g.dart';

@HiveType(typeId: 1)
class DBModel extends HiveObject{
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final String productName;
  @HiveField(4)
  final String productPrice;
  @HiveField(5)
  final String store;
  @HiveField(6)
  final String returnTime;
  @HiveField(7)
  final String address;

  DBModel({
    required this.name,
    required this.email,
    required this.image,
    required this.productName,
    required this.productPrice,
    required this.store,
    required this.returnTime,
    required this.address,
  });
}
