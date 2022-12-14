// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DBModelAdapter extends TypeAdapter<DBModel> {
  @override
  final int typeId = 1;

  @override
  DBModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DBModel(
      name: fields[0] as String,
      subName: fields[1] as String,
      image: fields[3] as String,
      productName: fields[4] as String,
      productPrice: fields[5] as String,
      store: fields[6] as String,
      returnTime: fields[7] as String,
      address: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DBModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.subName)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.productName)
      ..writeByte(5)
      ..write(obj.productPrice)
      ..writeByte(6)
      ..write(obj.store)
      ..writeByte(7)
      ..write(obj.returnTime)
      ..writeByte(8)
      ..write(obj.address);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DBModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
