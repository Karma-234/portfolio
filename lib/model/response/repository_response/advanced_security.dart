import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advanced_security.g.dart';

@JsonSerializable()
class AdvancedSecurity {
  final String? status;

  const AdvancedSecurity({this.status});

  factory AdvancedSecurity.fromJson(Map<String, dynamic> json) {
    return _$AdvancedSecurityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdvancedSecurityToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AdvancedSecurity) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode;
}
