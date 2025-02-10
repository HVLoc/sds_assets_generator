// GENERATED CODE - DO NOT MODIFY MANUALLY
// **************************************************************************
// Auto generated by SoftDreams Developer
// **************************************************************************
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'package:easy_sds_config/easy_sds_config.dart';

class Assets {
  const Assets._();
  static const String package = 'example';

  static bool isFromModules = ConfigAssets.isFromModules;

  static String get assets_dd_txt =>
      '${isFromModules ? "packages/example/" : ""}assets/dd.txt';

  /// {@macro assets_generator.assets_images_flutter_candies_logo_png.preview}
  static String get assets_images_flutter_candies_logo_png =>
      '${isFromModules ? "packages/example/" : ""}assets/images/flutter_candies_logo.png';

  static String get assets_test_txt =>
      '${isFromModules ? "packages/example/" : ""}assets/test.txt';
}

final List<String> assetsArray = <String>[
  Assets.assets_dd_txt,

  /// {@macro assets_generator.assets_images_flutter_candies_logo_png.preview}
  Assets.assets_images_flutter_candies_logo_png,
  Assets.assets_test_txt,
];
