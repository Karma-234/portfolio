import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'secret_scanning_push_protection.g.dart';

@JsonSerializable()
class SecretScanningPushProtection {
  final String? status;

  const SecretScanningPushProtection({this.status});

  factory SecretScanningPushProtection.fromJson(Map<String, dynamic> json) {
    return _$SecretScanningPushProtectionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SecretScanningPushProtectionToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SecretScanningPushProtection) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode;
}
