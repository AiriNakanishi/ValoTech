import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';
import 'package:valotech/view/option/option_view.dart';

class MapOption extends OptionView {
  //Home画面でのMapの表示
  MapOption({super.key})
      : super(
          optionTitle: 'Map',
          optionPress: {for (String i in MapName.mapName) i: false},
          optionColors: AppColor.brand.secondary,
        );
}
