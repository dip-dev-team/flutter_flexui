library;

import 'src/utils/device.dart';
import 'src/utils/screen.dart';

export 'src/utils/device.dart';
export 'src/utils/extensions.dart';
export 'src/utils/screen.dart';
export 'src/widgets/flex_builder.dart';
export 'src/widgets/flex_row.dart';
export 'src/widgets/flex_text.dart';
export 'src/widgets/flex_widget.dart';

class FlexUI with Screen {
  static Screen get screen => Screen();
  static Device get device => Device();
}
