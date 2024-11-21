# Flutter FlexUI

[![Pub][pub_badge]][pub]

Flutter package for build Flexible UI for diference screens

[![BuyMeACoffee][buy_me_a_coffee_badge]][buy_me_a_coffee]

## Features

- adaptive text size
- widget replacement for different screen sizes
- adaptive row (changing the number of columns)
- device type detection, including TV

## Getting Started

To use this package, add `flutter_flexui` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```yaml
dependencies:
  flutter_flexui: <latest_version>
```

## Using

```dart
import 'package:flutter_flexui/flutter_flexui.dart';
```

### Example

For a longer example see at `/example` folder.

#### FlexRow

```dart
  FlexRow(
    colLg: 6,
    colMd: 3,
    colSm: 1,
    colMainAxisAlignment: MainAxisAlignment.spaceEvenly,
    colVerticalDirection: VerticalDirection.down,
    colMainAxisSize: MainAxisSize.max,
    rowMainAxisAlignment: MainAxisAlignment.spaceAround,
    rowVerticalDirection: VerticalDirection.down,
    rowMainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Text('1'),
      Text('2'),
      Text('3'),
      Text('4'),
      Text('5'),
      ],
  );
```

#### FlexText

```dart
  FlexText(
    "Test",
    styleSm: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
    styleMd: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
    styleLg: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
  );
```

#### FlexWidget

```dart
  FlexWidget(
    sm: Text("Small"),
    md: Text("Meddium"),
    lg: Text("Large"),
  );
```

#### FlexBuilder

```dart
  FlexBuilder(
      builder: (context, screen) {
        return Container();
      },
    );
```
### Utils

#### Screen

```dart
  /// Return @ScreenSize
  /// @ScreenSize.xs (for phones - screens less than 768px wide)
  /// @ScreenSize.sm (for tablets - screens equal to or greater than 768px wide)
  /// @ScreenSize.md (for small laptops - screens equal to or greater than 992px wide)
  /// @ScreenSize.lg (for laptops and desktops - screens equal to or greater than 1200px wide)
  context.screenSize;

  /// Get MediaQueryData
  context.mediaQuery;

  /// Get Orientation
  context.orientation;

  /// Width of Screen
  context.screenWidth;

  /// Height of Screen
  context.screenHeight;

  /// Get pixel ratio of screen
  context.pixelRatio;

  /// Screen diagonal
  context.diagonal;

  /// Screen diagonal in inc
  context.diagonalInches;

  /// Get height of status bar
  context.statusBarHeight;

  /// Get height of bottom bar
  context.bottomBarHeight;

  // Get value by screen size
  context.valueByScreen(xsObject, smObject, mdObject, lgObject);
```

#### Device

```dart
  context.isDesktop

  context.isTablet

  context.isMobile

  context.isWeb

  context.isWindows

  context.isLinux

  context.isMacOS

  context.isAndroid

  context.isFuchsia

  context.isIOS

  /// Get @DeviceType
  context.deviceType
```

## Sponsoring

I'm working on my packages on my free-time, but I don't have as much time as I would. If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to read the issues, fix bugs, merge pull requests and add features to these packages.

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue][issue].  
If you fixed a bug or implemented a feature, please send a [pull request][pr].

<!-- Links -->
[pub_badge]: https://img.shields.io/pub/v/flutter_flexui.svg
[pub]: https://pub.dartlang.org/packages/flutter_flexui

[buy_me_a_coffee]:https://buymeacoffee.com/dip.dev
[buy_me_a_coffee_badge]: https://img.buymeacoffee.com/button-api/?text=Donate&emoji=&slug=dip.dev&button_colour=29b6f6&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00

[issue]: https://github.com/dip-dev-team/flutter_flexui/issues
[pr]: https://github.com/dip-dev-team/flutter_flexui/pulls