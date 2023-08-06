//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateLibraryDto {
  /// Returns a new [UpdateLibraryDto] instance.
  UpdateLibraryDto({
    required this.id,
    this.importPaths = const [],
    this.isVisible,
    required this.name,
  });

  String id;

  List<String> importPaths;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isVisible;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateLibraryDto &&
     other.id == id &&
     other.importPaths == importPaths &&
     other.isVisible == isVisible &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (importPaths.hashCode) +
    (isVisible == null ? 0 : isVisible!.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'UpdateLibraryDto[id=$id, importPaths=$importPaths, isVisible=$isVisible, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'importPaths'] = this.importPaths;
    if (this.isVisible != null) {
      json[r'isVisible'] = this.isVisible;
    } else {
    //  json[r'isVisible'] = null;
    }
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [UpdateLibraryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateLibraryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UpdateLibraryDto(
        id: mapValueOfType<String>(json, r'id')!,
        importPaths: json[r'importPaths'] is Iterable
            ? (json[r'importPaths'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        isVisible: mapValueOfType<bool>(json, r'isVisible'),
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<UpdateLibraryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateLibraryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateLibraryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateLibraryDto> mapFromJson(dynamic json) {
    final map = <String, UpdateLibraryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLibraryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateLibraryDto-objects as value to a dart map
  static Map<String, List<UpdateLibraryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateLibraryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateLibraryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'importPaths',
    'name',
  };
}
