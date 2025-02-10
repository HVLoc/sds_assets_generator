# sds_assets_generator

The flutter tool to generate assets‘s configs(yaml) and consts automatically for single project and multiple modules at SDS.

Customized and apply for SDS, not for everyone.

Forked from "https://github.com/fluttercandies/assets_generator"

![](assets_generator.gif)

Command for generate at SoftDreams: 
```dart
sds_agen -f lib -t f -s -r uwu
```

- [sds_assets_generator](#assets_generator)
  - [Usage](#usage)
    - [Environment](#environment)
    - [Activate assets_generator](#activate-assets_generator)
    - [Command](#command)
      - [Help](#help)
      - [Demo](#demo)
      - [All Commands](#all-commands)
    - [Dart](#dart)
      - [Work in Project](#work-in-project)
      - [Work in Modules](#work-in-modules)

## Usage

### Environment

you need to add pub bin path into your system path.

| Platform       |     Cache  location     |
| -------------- | :---------------------: |
| macOS or Linux |  $HOME/.pub-cache/bin   |
| Windows*       | %APPDATA%\Pub\Cache\bin |

[pub global](https://dart.dev/tools/pub/cmd/pub-global)

### Activate sds_assets_generator

 `dart pub global activate sds_assets_generator`

### Command

#### Help

`sds_agen -h`

#### Demo

`sds_agen -t d -s -r lwu`

#### All Commands

``` markdown
-h, --[no-]help       Help usage
-p, --path            Flutter project root path
                      (defaults to ".")
-f, --folder          The root folder of assets
                      (defaults to "assets")
-w, --[no-]watch      Whether continue to monitor the changes of assets
                      (defaults to on)
-t, --type            The type in pubsepec.yaml
                      "d" means directory "- assets/images/"
                      "f" means file      "- assets/images/xxx.jpg"
                      (defaults to "d")
-s, --[no-]save       Whether save the arguments into the local
                      It will execute the local arguments if run "gp_agen" without any arguments
-o, --out             The path of const Class
                      (defaults to "lib")
-r, --rule            The rule for the names of assets' consts
                      "lwu"(lowercase_with_underscores) : "assets_images_xxx_jpg"
                      "uwu"(uppercase_with_underscores) : "ASSETS_IMAGES_XXX_JPG"
                      "lcc"(lowerCamelCase)             : "assetsImagesXxxJpg"
                      (defaults to "lwu")
-c, --class           The name of const Class
                      (defaults to "Assets")
    --const-ignore    The regular to ignore some consts
```

### Dart

#### Work in Project

``` dart
    Image.asset(Assets.assets_images_xxx_jpg);
```

#### Work in Modules

``` dart
    Image.asset(
      Assets.assets_images_xxx_jpg,
      package: Assets.package,
    );
```