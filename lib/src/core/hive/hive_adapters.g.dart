// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class AlarmAdapter extends TypeAdapter<Alarm> {
  @override
  final typeId = 0;

  @override
  Alarm read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Alarm(
      id: (fields[0] as num).toInt(),
      label: fields[1] as String,
      soundAsset: fields[2] as AlarmAsset,
      repeatMode: fields[3] as AlarmRepeatMode,
      customRepeatDays: fields[4] == null
          ? []
          : (fields[4] as List).cast<int>(),
      time: fields[5] as TimeOfDay,
      isActive: fields[6] == null ? true : fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Alarm obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.soundAsset)
      ..writeByte(3)
      ..write(obj.repeatMode)
      ..writeByte(4)
      ..write(obj.customRepeatDays)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlarmAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlarmAssetAdapter extends TypeAdapter<AlarmAsset> {
  @override
  final typeId = 1;

  @override
  AlarmAsset read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlarmAsset(
      path: fields[0] == null ? '' : fields[0] as String,
      type: fields[1] == null ? AssetType.asset : fields[1] as AssetType,
    );
  }

  @override
  void write(BinaryWriter writer, AlarmAsset obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.path)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlarmAssetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlarmRepeatModeAdapter extends TypeAdapter<AlarmRepeatMode> {
  @override
  final typeId = 2;

  @override
  AlarmRepeatMode read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AlarmRepeatMode.once;
      case 1:
        return AlarmRepeatMode.daily;
      case 2:
        return AlarmRepeatMode.weekdays;
      case 3:
        return AlarmRepeatMode.custom;
      default:
        return AlarmRepeatMode.once;
    }
  }

  @override
  void write(BinaryWriter writer, AlarmRepeatMode obj) {
    switch (obj) {
      case AlarmRepeatMode.once:
        writer.writeByte(0);
      case AlarmRepeatMode.daily:
        writer.writeByte(1);
      case AlarmRepeatMode.weekdays:
        writer.writeByte(2);
      case AlarmRepeatMode.custom:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlarmRepeatModeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AssetTypeAdapter extends TypeAdapter<AssetType> {
  @override
  final typeId = 3;

  @override
  AssetType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AssetType.asset;
      case 1:
        return AssetType.file;
      case 2:
        return AssetType.url;
      case 3:
        return AssetType.bytes;
      default:
        return AssetType.asset;
    }
  }

  @override
  void write(BinaryWriter writer, AssetType obj) {
    switch (obj) {
      case AssetType.asset:
        writer.writeByte(0);
      case AssetType.file:
        writer.writeByte(1);
      case AssetType.url:
        writer.writeByte(2);
      case AssetType.bytes:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AssetTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TimeOfDayAdapter extends TypeAdapter<TimeOfDay> {
  @override
  final typeId = 4;

  @override
  TimeOfDay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeOfDay(
      hour: (fields[0] as num).toInt(),
      minute: (fields[1] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, TimeOfDay obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.hour)
      ..writeByte(1)
      ..write(obj.minute);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeOfDayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
