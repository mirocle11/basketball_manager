// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsCategoryAdapter extends TypeAdapter<NewsCategory> {
  @override
  final int typeId = 20;

  @override
  NewsCategory read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return NewsCategory.gameRecap;
      case 1:
        return NewsCategory.injury;
      case 2:
        return NewsCategory.trade;
      case 3:
        return NewsCategory.offCourt;
      default:
        return NewsCategory.gameRecap;
    }
  }

  @override
  void write(BinaryWriter writer, NewsCategory obj) {
    switch (obj) {
      case NewsCategory.gameRecap:
        writer.writeByte(0);
        break;
      case NewsCategory.injury:
        writer.writeByte(1);
        break;
      case NewsCategory.trade:
        writer.writeByte(2);
        break;
      case NewsCategory.offCourt:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
