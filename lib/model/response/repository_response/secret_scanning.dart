import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'secret_scanning.g.dart';

@JsonSerializable()
class SecretScanning {
  final String? status;

  const SecretScanning({this.status});

  factory SecretScanning.fromJson(Map<String, dynamic> json) {
    return _$SecretScanningFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SecretScanningToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SecretScanning) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode;
}
