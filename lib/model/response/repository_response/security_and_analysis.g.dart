// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_and_analysis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecurityAndAnalysis _$SecurityAndAnalysisFromJson(Map<String, dynamic> json) =>
    SecurityAndAnalysis(
      advancedSecurity: json['advanced_security'] == null
          ? null
          : AdvancedSecurity.fromJson(
              json['advanced_security'] as Map<String, dynamic>),
      secretScanning: json['secret_scanning'] == null
          ? null
          : SecretScanning.fromJson(
              json['secret_scanning'] as Map<String, dynamic>),
      secretScanningPushProtection: json['secret_scanning_push_protection'] ==
              null
          ? null
          : SecretScanningPushProtection.fromJson(
              json['secret_scanning_push_protection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SecurityAndAnalysisToJson(
        SecurityAndAnalysis instance) =>
    <String, dynamic>{
      'advanced_security': instance.advancedSecurity,
      'secret_scanning': instance.secretScanning,
      'secret_scanning_push_protection': instance.secretScanningPushProtection,
    };
