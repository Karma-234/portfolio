import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'advanced_security.dart';
import 'secret_scanning.dart';
import 'secret_scanning_push_protection.dart';

part 'security_and_analysis.g.dart';

@JsonSerializable()
class SecurityAndAnalysis {
  @JsonKey(name: 'advanced_security')
  final AdvancedSecurity? advancedSecurity;
  @JsonKey(name: 'secret_scanning')
  final SecretScanning? secretScanning;
  @JsonKey(name: 'secret_scanning_push_protection')
  final SecretScanningPushProtection? secretScanningPushProtection;

  const SecurityAndAnalysis({
    this.advancedSecurity,
    this.secretScanning,
    this.secretScanningPushProtection,
  });

  factory SecurityAndAnalysis.fromJson(Map<String, dynamic> json) {
    return _$SecurityAndAnalysisFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SecurityAndAnalysisToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SecurityAndAnalysis) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      advancedSecurity.hashCode ^
      secretScanning.hashCode ^
      secretScanningPushProtection.hashCode;
}
