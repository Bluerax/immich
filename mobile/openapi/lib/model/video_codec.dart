//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VideoCodec {
  /// Instantiate a new enum with the provided [value].
  const VideoCodec._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const H264 = VideoCodec._(r'h264');
  static const HEVC = VideoCodec._(r'hevc');
  static const VP9 = VideoCodec._(r'vp9');

  /// List of all possible values in this [enum][VideoCodec].
  static const values = <VideoCodec>[
    H264,
    HEVC,
    VP9,
  ];

  static VideoCodec? fromJson(dynamic value) => VideoCodecTypeTransformer().decode(value);

  static List<VideoCodec>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VideoCodec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VideoCodec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VideoCodec] to String,
/// and [decode] dynamic data back to [VideoCodec].
class VideoCodecTypeTransformer {
  factory VideoCodecTypeTransformer() => _instance ??= const VideoCodecTypeTransformer._();

  const VideoCodecTypeTransformer._();

  String encode(VideoCodec data) => data.value;

  /// Decodes a [dynamic value][data] to a VideoCodec.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VideoCodec? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'h264': return VideoCodec.H264;
        case r'hevc': return VideoCodec.HEVC;
        case r'vp9': return VideoCodec.VP9;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VideoCodecTypeTransformer] instance.
  static VideoCodecTypeTransformer? _instance;
}

