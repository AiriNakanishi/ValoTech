import 'package:valotech/constant/app_color.dart';
import 'package:valotech/constant/basic_data.dart';
import 'package:valotech/view/option/option_view.dart';

class AtkDfOption extends OptionView {
  //Home画面でのMapの表示
  AtkDfOption({super.key})
      : super(
          optionTitle: 'ATK or DF',
          optionPress: {for (String i in AtkDfName.atkDfName) i: false},
          optionColors: AppColor.brand.secondary,
        );
}
