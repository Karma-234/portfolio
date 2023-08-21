import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'permissions.g.dart';

@JsonSerializable()
class Permissions {
  final bool? admin;
  final bool? push;
  final bool? pull;

  const Permissions({this.admin, this.push, this.pull});

  factory Permissions.fromJson(Map<String, dynamic> json) {
    return _$PermissionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PermissionsToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Permissions) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => admin.hashCode ^ push.hashCode ^ pull.hashCode;
}
